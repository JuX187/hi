import javax.swing.JOptionPane;
public class hangman {
public static void main(String args[]) 
{
	String solWord;
	int NumTry = 0;
	char[] arrABC= "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
	String input;
	int maxTries=10;
	char[] guessWord;
	do {
		solWord=JOptionPane.showInputDialog(null, "Geben Sie das zu erratende Wort ein!");}
	while(solWord.length()>9);
	
	guessWord = new char[solWord.length()];
	
	for (int i=0; i<guessWord.length;i++) {
		guessWord[i]='_';
	}
		
	do {
		System.out.println(guessWord);
		input = JOptionPane.showInputDialog("Geben Sie einen Buchstaben ein!");
	
	
	if (solWord.contains(input.charAt(0)+""))  
	{
		for (int i=0; i<solWord.length(); i++) {
			if (input.charAt(0)==solWord.charAt(i)) {
				guessWord[i]=input.charAt(0);
			}
		}
	}
	}while (NumTry<=maxTries);

}
}
