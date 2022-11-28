.class final enum Lcom/google/android/libraries/places/internal/ks;
.super Ljava/lang/Enum;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/ks;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/ks;

.field public static final enum b:Lcom/google/android/libraries/places/internal/ks;

.field public static final enum c:Lcom/google/android/libraries/places/internal/ks;

.field public static final enum d:Lcom/google/android/libraries/places/internal/ks;

.field private static final synthetic f:[Lcom/google/android/libraries/places/internal/ks;


# instance fields
.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/ks;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/ks;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ks;->a:Lcom/google/android/libraries/places/internal/ks;

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/ks;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/libraries/places/internal/ks;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ks;->b:Lcom/google/android/libraries/places/internal/ks;

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/ks;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/libraries/places/internal/ks;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ks;->c:Lcom/google/android/libraries/places/internal/ks;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/ks;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/libraries/places/internal/ks;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ks;->d:Lcom/google/android/libraries/places/internal/ks;

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/ks;

    sget-object v1, Lcom/google/android/libraries/places/internal/ks;->a:Lcom/google/android/libraries/places/internal/ks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/ks;->b:Lcom/google/android/libraries/places/internal/ks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/places/internal/ks;->c:Lcom/google/android/libraries/places/internal/ks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/places/internal/ks;->d:Lcom/google/android/libraries/places/internal/ks;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/libraries/places/internal/ks;->f:[Lcom/google/android/libraries/places/internal/ks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/ks;->e:Z

    return-void
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/ks;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/ks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/ks;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/ks;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/ks;->f:[Lcom/google/android/libraries/places/internal/ks;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/ks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/ks;

    return-object v0
.end method
