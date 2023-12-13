codeunit 50100 "CryptoUtils"
{
    var
        crypto: Codeunit "Rijndael Cryptography";

    procedure EncryptData(Data: Text): Text
    var
        EncryptionKey: Text;
        BlockSize: Integer;
        CipherMode: Text;
        PaddingMode: Text;
    begin
        EncryptionKey := '80df547a8f0a402ead165f7f2798956d';
        BlockSize := 128;
        CipherMode := 'CBC';
        PaddingMode := 'PKCS7';
        crypto.InitRijndaelProvider(EncryptionKey, BlockSize, CipherMode, PaddingMode);
        exit(crypto.Encrypt(Data));

    end;

    procedure DecryptData(Data: Text): Text
    var
        EncryptionKey: Text;
        BlockSize: Integer;
        CipherMode: Text;
        PaddingMode: Text;
    begin
        EncryptionKey := '80df547a8f0a402ead165f7f2798956d';
        BlockSize := 128;
        CipherMode := 'CBC';
        PaddingMode := 'PKCS7';
        crypto.InitRijndaelProvider(EncryptionKey, BlockSize, CipherMode, PaddingMode);
        exit(crypto.Decrypt(Data));

    end;

}
