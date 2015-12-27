\uFEFF/*
void ReadQuadratureAR(void)
{
	com.printf("R->");
	
	// check channel B to see which way
	if (RchB.read() == 0)
		EncoderPositionR++;
	else 
		EncoderPositionR--; 
}

void ReadQuadratureBR(void)
{
	com.printf("R<-");
	// check channel A to see which way
	if (RchA.read() == 1)
		EncoderPositionR++;
	else 
		EncoderPositionR--; 
}

void ReadQuadratureAL(void)
{
	com.printf("L->");
	// check channel B to see which way
	if (LchB.read() == 0)
		EncoderPositionL++;
	else 
		EncoderPositionL--; 
}

void ReadQuadratureBL(void)
{
	com.printf("L<-");
	// check channel A to see which way
	if (LchA.read() == 1)
		EncoderPositionL++;
	else 
		EncoderPositionL--; 
}
*/