.class public abstract enum Lorg/spongycastle/crypto/PasswordConverter;
.super Ljava/lang/Enum;
.source "PasswordConverter.java"

# interfaces
.implements Lorg/spongycastle/crypto/CharToByteConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/spongycastle/crypto/PasswordConverter;",
        ">;",
        "Lorg/spongycastle/crypto/CharToByteConverter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/spongycastle/crypto/PasswordConverter;

.field public static final enum ASCII:Lorg/spongycastle/crypto/PasswordConverter;

.field public static final enum PKCS12:Lorg/spongycastle/crypto/PasswordConverter;

.field public static final enum UTF8:Lorg/spongycastle/crypto/PasswordConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lorg/spongycastle/crypto/PasswordConverter$1;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/PasswordConverter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/PasswordConverter;->ASCII:Lorg/spongycastle/crypto/PasswordConverter;

    .line 27
    new-instance v0, Lorg/spongycastle/crypto/PasswordConverter$2;

    const-string v1, "UTF8"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/crypto/PasswordConverter$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/PasswordConverter;->UTF8:Lorg/spongycastle/crypto/PasswordConverter;

    .line 42
    new-instance v0, Lorg/spongycastle/crypto/PasswordConverter$3;

    const-string v1, "PKCS12"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/crypto/PasswordConverter$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/PasswordConverter;->PKCS12:Lorg/spongycastle/crypto/PasswordConverter;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Lorg/spongycastle/crypto/PasswordConverter;

    sget-object v1, Lorg/spongycastle/crypto/PasswordConverter;->ASCII:Lorg/spongycastle/crypto/PasswordConverter;

    aput-object v1, v0, v2

    sget-object v1, Lorg/spongycastle/crypto/PasswordConverter;->UTF8:Lorg/spongycastle/crypto/PasswordConverter;

    aput-object v1, v0, v3

    sget-object v1, Lorg/spongycastle/crypto/PasswordConverter;->PKCS12:Lorg/spongycastle/crypto/PasswordConverter;

    aput-object v1, v0, v4

    sput-object v0, Lorg/spongycastle/crypto/PasswordConverter;->$VALUES:[Lorg/spongycastle/crypto/PasswordConverter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/spongycastle/crypto/PasswordConverter$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/PasswordConverter;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/spongycastle/crypto/PasswordConverter;
    .locals 1

    .line 6
    const-class v0, Lorg/spongycastle/crypto/PasswordConverter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/crypto/PasswordConverter;

    return-object p0
.end method

.method public static values()[Lorg/spongycastle/crypto/PasswordConverter;
    .locals 1

    .line 6
    sget-object v0, Lorg/spongycastle/crypto/PasswordConverter;->$VALUES:[Lorg/spongycastle/crypto/PasswordConverter;

    invoke-virtual {v0}, [Lorg/spongycastle/crypto/PasswordConverter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/crypto/PasswordConverter;

    return-object v0
.end method
