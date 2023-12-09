%Estimadores con sesgo y sin sesgo
for i=1e3:2e3:10e3
    m=1;
    s=1;
    N=i;
    P=3;
    %Generando observaciones
    x=normrnd(m,sqrt(s),N,P);
    %Calculando estimador de media muestral
    m_h=mean(x,2);
    media=mean(m_h)
    figure('Name',['Muestras=',num2str(N)])
    %Histograma de estimador de media muestral
    subplot(3,1,1)  
    h1=histogram(m_h,50);
    hold on
    stem(mean(m_h),max(h1.Values))
    hold off
    title(['Estimador de media muestral',' Media=',num2str(media)])
    %Estimador de varianza sesgado
    s_b=var(x,1,2);
    var_sesgo=mean(s_b)
    %Histograma de varianza sesgado
    subplot(3,1,2)
    h2=histogram(s_b,50);
    hold on
    stem(mean(s_b),max(h2.Values))
    hold off
    title(['Estimador de varianza sesgado',' sesgo=',num2str(var_sesgo)])
    %Estimador de varianza insesgado
    s_u=var(x,0,2);
    var_unses=mean(s_u)
    %Histograma de varianza sin sesgo
    subplot(3,1,3)
    h3=histogram(s_u,50);
    hold on
    stem(mean(s_u),max(h3.Values))
    hold off
    title(['Estimador de varianza sin sesgo',' unses=',num2str(var_unses)])
end

