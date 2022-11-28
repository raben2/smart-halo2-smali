.class final Lcom/google/android/libraries/places/internal/mw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/mx;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/mx;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/mw;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/my;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/my;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/mw;->b:Ljava/lang/Iterable;

    return-void
.end method
