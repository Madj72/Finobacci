package queens;
public class EightQueens {

	public static void main(String[] args) {
		
		
		char  [][]board  = {
				
				{'O','O','O','O','O','O','O','O'},
				{'O','O','O','O','O','O','O','O'},	
				{'O','O','O','O','O','O','O','O'},	
				{'O','O','O','O','O','O','O','O'},	
				{'O','O','O','O','O','O','O','O'},	
				{'O','O','O','O','O','O','O','O'},
				{'O','O','O','O','O','O','O','O'},	
				{'O','O','O','O','O','O','O','O'},	
						
		};
		////changes
		///
		Queen  problem = new Queen();
		if (!problem.solveQueen(board, 0)) {
			System.out.println("NO SOLUTION");
		}
		else {
			problem.printBoard(board);
		}
		// change number one
		//Ts
	}	

}
