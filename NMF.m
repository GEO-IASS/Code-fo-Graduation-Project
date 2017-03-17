function [W,H] = NMF(V,R,K)
% NMF - ���õ�����˷�ʵ�ַǸ�����ֽ�
% ����˵����
% V - ���ֽ�ľ���
% R - �ֽ��ľ������
% K - ��������
% W,H - ���������� V = W * N
[m,n] = size(V);
W = abs(rand(n,R));
H = abs(rand(R,m));
for i = 1:K
    H = H .* (W'*V) ./ ((W'*W)*H);
    W = W .* (V*H') ./ (W*(H*H'));
end
end