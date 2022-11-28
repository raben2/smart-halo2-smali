.class public final Lcom/google/android/libraries/places/internal/jm$a;
.super Lcom/google/android/libraries/places/internal/kv$a;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv$a<",
        "Lcom/google/android/libraries/places/internal/jm;",
        "Lcom/google/android/libraries/places/internal/jm$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/jm;->j:Lcom/google/android/libraries/places/internal/jm;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/kv$a;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/jm$b;)Lcom/google/android/libraries/places/internal/jm$a;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jm$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/jm;

    if-eqz p1, :cond_0

    .line 10
    iget v1, v0, Lcom/google/android/libraries/places/internal/jm;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/jm;->a:I

    .line 12
    iget p1, p1, Lcom/google/android/libraries/places/internal/jm$b;->c:I

    .line 13
    iput p1, v0, Lcom/google/android/libraries/places/internal/jm;->b:I

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
