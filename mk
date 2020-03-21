package queens;
class Queen {

	final int n = 8;
     // PRINT BOARD METHODE
	public void printBoard(char board[][]) {
		String result = "";
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				System.out.println("" + board[i][j] + "");
			}
			System.out.println();

		}

	}
     //@ UTIL METHODE
	public boolean util(char board[][], int row, int col) {

		for (int i =0;i<col;i++){
			if(board[row][col]=='Q') {return false;}
		}	for(int i = row, j = col ;i>=0 && j>= 0;j--,i--) {
			if (board [i][j]=='Q') {return false;}
		}
		for(int i = row, j = col ;i<n && j>= 0;i++,j--) {
			if (board [i][j]=='Q') {return false;}
			}
		
		return true;

	}
	 //************* THE RECURSION*******************//
	
	public boolean solveQueen(char board [] [], int col) {
		
		if (col>=n) {
			return true;
		}
		for (int i= 0;i<n;i++) {
			if(util(board, i ,col)) {
			board [i][col] = 'Q';
			if(solveQueen(board, col+1)==true) {
			return true;	
			}
			board[i][col] = 'O';
			}
		}
		
		
	return false;	
	}
               //@ MADJID KERDJA
	
}
