.class abstract Lcom/google/android/libraries/places/internal/lm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/lm;

.field public static final b:Lcom/google/android/libraries/places/internal/lm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/ln;

    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ln;-><init>()V

    .line 4
    sput-object v0, Lcom/google/android/libraries/places/internal/lm;->a:Lcom/google/android/libraries/places/internal/lm;

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/lo;

    .line 6
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/lo;-><init>()V

    .line 7
    sput-object v0, Lcom/google/android/libraries/places/internal/lm;->b:Lcom/google/android/libraries/places/internal/lm;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)V
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
