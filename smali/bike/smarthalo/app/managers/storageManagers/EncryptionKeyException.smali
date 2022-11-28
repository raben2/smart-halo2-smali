.class public Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;
.super Ljava/lang/Exception;
.source "EncryptionKeyException.java"


# instance fields
.field public keyValidity:Lbike/smarthalo/app/models/EncryptionKeyValidity;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/models/EncryptionKeyValidity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;->keyValidity:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-void
.end method
