.class final enum Lcom/google/android/libraries/places/internal/gi;
.super Ljava/lang/Enum;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/gi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/gi;

.field public static final enum b:Lcom/google/android/libraries/places/internal/gi;

.field public static final enum c:Lcom/google/android/libraries/places/internal/gi;

.field public static final enum d:Lcom/google/android/libraries/places/internal/gi;

.field private static final synthetic e:[Lcom/google/android/libraries/places/internal/gi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/gi;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gi;->a:Lcom/google/android/libraries/places/internal/gi;

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/gi;

    const-string v1, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/gi;

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/gi;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/places/internal/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gi;->c:Lcom/google/android/libraries/places/internal/gi;

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/gi;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/libraries/places/internal/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gi;->d:Lcom/google/android/libraries/places/internal/gi;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/gi;

    sget-object v1, Lcom/google/android/libraries/places/internal/gi;->a:Lcom/google/android/libraries/places/internal/gi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/gi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/places/internal/gi;->c:Lcom/google/android/libraries/places/internal/gi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/places/internal/gi;->d:Lcom/google/android/libraries/places/internal/gi;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/libraries/places/internal/gi;->e:[Lcom/google/android/libraries/places/internal/gi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/gi;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/gi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/gi;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/gi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/gi;->e:[Lcom/google/android/libraries/places/internal/gi;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/gi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/gi;

    return-object v0
.end method
