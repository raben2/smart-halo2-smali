.class public final enum Lcom/google/android/libraries/places/internal/ji$b;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ky;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/ji$b;",
        ">;",
        "Lcom/google/android/libraries/places/internal/ky;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/ji$b;

.field private static final enum c:Lcom/google/android/libraries/places/internal/ji$b;

.field private static final synthetic d:[Lcom/google/android/libraries/places/internal/ji$b;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/ji$b;

    const-string v1, "PHOTO_METADATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/ji$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ji$b;->c:Lcom/google/android/libraries/places/internal/ji$b;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/ji$b;

    const-string v1, "PHOTO_IMAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/libraries/places/internal/ji$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ji$b;->a:Lcom/google/android/libraries/places/internal/ji$b;

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/ji$b;

    sget-object v1, Lcom/google/android/libraries/places/internal/ji$b;->c:Lcom/google/android/libraries/places/internal/ji$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/ji$b;->a:Lcom/google/android/libraries/places/internal/ji$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/places/internal/ji$b;->d:[Lcom/google/android/libraries/places/internal/ji$b;

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/jj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/jj;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput p3, p0, Lcom/google/android/libraries/places/internal/ji$b;->b:I

    return-void
.end method

.method public static b()Lcom/google/android/libraries/places/internal/kz;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/jk;->a:Lcom/google/android/libraries/places/internal/kz;

    return-object v0
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/ji$b;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/ji$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/ji$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/ji$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/ji$b;->d:[Lcom/google/android/libraries/places/internal/ji$b;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/ji$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/ji$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/libraries/places/internal/ji$b;->b:I

    return v0
.end method
