.class Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;
.super Ljava/lang/Object;
.source "JcePGPDataEncryptorBuilder.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDataEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPGPDataEncryptor"
.end annotation


# instance fields
.field private final c:Ljavax/crypto/Cipher;

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$200(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result v1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createStreamCipher(IZ)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    .line 142
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 146
    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result p1

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result p1

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 159
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imvalid algorithm parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 155
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getIntegrityCalculator()Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    .line 165
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
