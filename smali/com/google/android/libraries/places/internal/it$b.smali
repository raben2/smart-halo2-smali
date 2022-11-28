.class public final Lcom/google/android/libraries/places/internal/it$b;
.super Lcom/google/android/libraries/places/internal/kv$a;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv$a<",
        "Lcom/google/android/libraries/places/internal/it;",
        "Lcom/google/android/libraries/places/internal/it$b;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/it;->p:Lcom/google/android/libraries/places/internal/it;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/kv$a;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/it$a;)Lcom/google/android/libraries/places/internal/it$b;
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/it;

    if-eqz p1, :cond_0

    .line 20
    iget v1, v0, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 22
    iget p1, p1, Lcom/google/android/libraries/places/internal/it$a;->c:I

    .line 23
    iput p1, v0, Lcom/google/android/libraries/places/internal/it;->c:I

    return-object p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/google/android/libraries/places/internal/it$c;)Lcom/google/android/libraries/places/internal/it$b;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/it;

    if-eqz p1, :cond_0

    .line 10
    iget v1, v0, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 12
    iget p1, p1, Lcom/google/android/libraries/places/internal/it$c;->d:I

    .line 13
    iput p1, v0, Lcom/google/android/libraries/places/internal/it;->b:I

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
