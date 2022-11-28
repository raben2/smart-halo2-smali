.class public Lcom/google/android/libraries/places/internal/jx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/libraries/places/internal/ma;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/mj<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/kv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/km;->a()Lcom/google/android/libraries/places/internal/km;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/kv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/jx;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/jx;->a:Lcom/google/android/libraries/places/internal/kv;

    return-void
.end method
