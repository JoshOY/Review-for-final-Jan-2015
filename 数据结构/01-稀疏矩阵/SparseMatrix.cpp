#include <iostream>
#include <vector>
using namespace std;


typedef struct _TriTuple{
	int i, j;
	double value;

	bool operator<(const _TriTuple& B) {
		if (this->i < B.i) {
			return true;
		}
		else if ((this->i == B.i) && (this->j < B.j)) {
			return true;
		}
		else {
			return false;
		}
	}
} TriTuple;

class SparseMatrix
{
public:
	SparseMatrix() {
		this->elemNum = 0;
		this->rowNum = 0;
		this->colNum = 0;
	}

	~SparseMatrix(){}

	void insert(const TriTuple& elem) {
		this->arr.push_back(elem);
		this->elemNum += 1;
		if (elem.i > this->rowNum) {
			this->rowNum = elem.i;
		}
		if (elem.j > this->colNum) {
			this->colNum = elem.j;
		}
		return;
	}

	void print() {
		for (int i = 0; i < this->elemNum; ++i) {
			cout << arr[i].i << "\t" << arr[i].j << "\t" << arr[i].value << endl;
		}
		return;
	}

	void transpose()
	{
		if (this->elemNum == 0) {
			return;
		}
		int index = 0;
		int *rowSize = new int[colNum + 1];
		int *rowStart = new int[colNum + 1];
		vector<TriTuple> newarr;		

		for (index = 0; index < colNum + 1; ++index) {
			rowStart[index] = 0;
			rowSize[index] = 0;
		}

		for (index = 0; index < elemNum; ++index) {
			newarr.push_back({0, 0, 0});
		}

		for (index = 0; index < elemNum; ++index) {
			rowSize[arr[index].j] += 1;
		}

		for (index = 1; index < colNum + 1; ++index) {
			rowStart[index] = rowStart[index - 1] + rowSize[index - 1];
		}

		for (index = 0; index < elemNum; ++index) {
			newarr[rowStart[arr[index].j]] = {arr[index].j, arr[index].i, arr[index].value};
			rowStart[arr[index].j] += 1;
		}

		this->arr = newarr;
		std::swap(this->colNum, this->rowNum);

		delete []rowSize;
		delete []rowStart;
		return;
	}

private:
	vector<TriTuple> arr;
	int elemNum;
	int colNum;
	int rowNum;
};


//For test
int main(int argc, char *argv[])
{
	SparseMatrix sparsemat;
	sparsemat.insert({0, 3, 9});
	sparsemat.insert({1, 1, 3});
	sparsemat.insert({2, 2, 7});
	sparsemat.insert({2, 3, 2});
	sparsemat.insert({3, 0, 5});
	sparsemat.insert({3, 4, -8});
	sparsemat.insert({4, 2, 4});
	sparsemat.insert({4, 3, 6});
	sparsemat.insert({5, 4, 1});

	sparsemat.print();
	cout << endl << endl;
	sparsemat.transpose();
	sparsemat.print();

	return 0;
}