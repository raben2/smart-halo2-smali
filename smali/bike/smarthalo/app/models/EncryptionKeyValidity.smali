.class public final enum Lbike/smarthalo/app/models/EncryptionKeyValidity;
.super Ljava/lang/Enum;
.source "EncryptionKeyValidity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/EncryptionKeyValidity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/EncryptionKeyValidity;

.field public static final enum Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

.field public static final enum Uninitialized:Lbike/smarthalo/app/models/EncryptionKeyValidity;

.field public static final enum Valid:Lbike/smarthalo/app/models/EncryptionKeyValidity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;

    const-string v1, "Valid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/EncryptionKeyValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Valid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;

    const-string v1, "Invalid"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/EncryptionKeyValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;

    const-string v1, "Uninitialized"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/EncryptionKeyValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Uninitialized:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/EncryptionKeyValidity;

    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Valid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Uninitialized:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->$VALUES:[Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/EncryptionKeyValidity;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/EncryptionKeyValidity;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->$VALUES:[Lbike/smarthalo/app/models/EncryptionKeyValidity;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/EncryptionKeyValidity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-object v0
.end method
