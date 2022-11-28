.class public final enum Lbike/smarthalo/app/models/userModels/Gender;
.super Ljava/lang/Enum;
.source "Gender.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/models/userModels/Gender$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/userModels/Gender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lbike/smarthalo/app/models/userModels/Gender;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "Male",
        "Female",
        "Other",
        "NotDisclosed",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/userModels/Gender;

.field public static final Companion:Lbike/smarthalo/app/models/userModels/Gender$Companion;

.field public static final enum Female:Lbike/smarthalo/app/models/userModels/Gender;

.field public static final enum Male:Lbike/smarthalo/app/models/userModels/Gender;

.field public static final enum NotDisclosed:Lbike/smarthalo/app/models/userModels/Gender;

.field public static final enum Other:Lbike/smarthalo/app/models/userModels/Gender;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lbike/smarthalo/app/models/userModels/Gender;

    new-instance v1, Lbike/smarthalo/app/models/userModels/Gender;

    const-string v2, "Male"

    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v2, v3, v3}, Lbike/smarthalo/app/models/userModels/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbike/smarthalo/app/models/userModels/Gender;->Male:Lbike/smarthalo/app/models/userModels/Gender;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/models/userModels/Gender;

    const-string v2, "Female"

    const/4 v3, 0x1

    .line 11
    invoke-direct {v1, v2, v3, v3}, Lbike/smarthalo/app/models/userModels/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbike/smarthalo/app/models/userModels/Gender;->Female:Lbike/smarthalo/app/models/userModels/Gender;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/models/userModels/Gender;

    const-string v2, "Other"

    const/4 v3, 0x2

    .line 12
    invoke-direct {v1, v2, v3, v3}, Lbike/smarthalo/app/models/userModels/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbike/smarthalo/app/models/userModels/Gender;->Other:Lbike/smarthalo/app/models/userModels/Gender;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/models/userModels/Gender;

    const-string v2, "NotDisclosed"

    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, v3, v3}, Lbike/smarthalo/app/models/userModels/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbike/smarthalo/app/models/userModels/Gender;->NotDisclosed:Lbike/smarthalo/app/models/userModels/Gender;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/app/models/userModels/Gender;->$VALUES:[Lbike/smarthalo/app/models/userModels/Gender;

    new-instance v0, Lbike/smarthalo/app/models/userModels/Gender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/models/userModels/Gender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/models/userModels/Gender;->Companion:Lbike/smarthalo/app/models/userModels/Gender$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbike/smarthalo/app/models/userModels/Gender;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/userModels/Gender;
    .locals 1

    const-class v0, Lbike/smarthalo/app/models/userModels/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/userModels/Gender;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/userModels/Gender;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/models/userModels/Gender;->$VALUES:[Lbike/smarthalo/app/models/userModels/Gender;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/userModels/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/userModels/Gender;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 9
    iget v0, p0, Lbike/smarthalo/app/models/userModels/Gender;->value:I

    return v0
.end method
