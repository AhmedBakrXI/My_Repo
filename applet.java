import java.applet.Applet;
import java.awt.*;
import java.util.*;
import java.awt.event.*;
public class MyApplet extends Applet implements Runnable{
	Thread th;
	Thread t;
	public int x;
	public int y;

	public int increase_x=10;
	public int increase_y=10;

	
	
	public void init(){
		x=getWidth()/2;
		y=getHeight()/2;
		th = new Thread(this);
		t = new Thread(this);
		th.start();
		t.start();
		Button start = new Button ("Start");
		Button stop = new Button ("Stop");
		start.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
				increase_x=10;
				increase_y=10;
				if (x>=getWidth()-50||x<=0){
							increase_x*=-1;
						}
						if (y>=getHeight()-50||y<=0){
							increase_y*=-1;
						}
				
				
			

				}
			

				


	});
		stop.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
				increase_x=0;
				increase_y=0;
				

			}
		});
		add(start);
		add(stop);
	}
	public void paint(Graphics g){
		
		g.setColor(new Color(247,149,0));
		setBackground(new Color (10,10,10));
		g.fillOval(x,y,50,50);
	}
	public void run(){
					while (true){
						x=x+increase_x;
						y=y+increase_y;
						if (x>=getWidth()-50||x<=0){
							increase_x*=-1;
						}
						if (y>=getHeight()-50||y<=0){
							increase_y*=-1;
						}
						try{
							th.sleep(10);

						}catch(InterruptedException ex){

						}
						
							
							
						repaint();
			
					}
					}	
	

}