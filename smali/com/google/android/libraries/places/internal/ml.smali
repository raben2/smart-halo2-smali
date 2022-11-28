.class public final enum Lcom/google/android/libraries/places/internal/ml;
.super Ljava/lang/Enum;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/ml;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/ml;

.field public static final enum b:Lcom/google/android/libraries/places/internal/ml;

.field private static final synthetic c:[Lcom/google/android/libraries/places/internal/ml;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/ml;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/ml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ml;->a:Lcom/google/android/libraries/places/internal/ml;

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/ml;

    const-string v1, "PROTO3"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/ml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ml;->b:Lcom/google/android/libraries/places/internal/ml;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/ml;

    sget-object v1, Lcom/google/android/libraries/places/internal/ml;->a:Lcom/google/android/libraries/places/internal/ml;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/ml;->b:Lcom/google/android/libraries/places/internal/ml;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/places/internal/ml;->c:[Lcom/google/android/libraries/places/internal/ml;

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

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/ml;
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/ml;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/ml;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/ml;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/ml;->c:[Lcom/google/android/libraries/places/internal/ml;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/ml;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/ml;

    return-object v0
.end method
