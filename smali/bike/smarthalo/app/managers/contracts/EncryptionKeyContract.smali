.class public interface abstract Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;
.super Ljava/lang/Object;
.source "EncryptionKeyContract.java"


# virtual methods
.method public abstract decryptData(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;
        }
    .end annotation
.end method

.method public abstract encryptData(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;
        }
    .end annotation
.end method

.method public abstract initializeKeys()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;
        }
    .end annotation
.end method

.method public abstract removeKeys()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
