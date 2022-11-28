.class abstract Lcom/google/android/libraries/places/internal/gh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/gi;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Lcom/google/android/libraries/places/internal/gj;

.field public final d:Z

.field public e:I

.field public f:I

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/gi;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/places/internal/gq;Ljava/lang/CharSequence;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/gh;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    .line 27
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/gq;->a:Lcom/google/android/libraries/places/internal/gj;

    .line 28
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->c:Lcom/google/android/libraries/places/internal/gj;

    .line 30
    iget-boolean v0, p1, Lcom/google/android/libraries/places/internal/gq;->b:Z

    .line 31
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/gh;->d:Z

    .line 33
    iget p1, p1, Lcom/google/android/libraries/places/internal/gq;->d:I

    .line 34
    iput p1, p0, Lcom/google/android/libraries/places/internal/gh;->f:I

    .line 35
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gh;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract b(I)I
.end method

.method protected b()Ljava/lang/String;
    .locals 6

    .line 37
    iget v0, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    .line 38
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/gh;->a(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 42
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 43
    iput v2, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/gh;->b(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    .line 46
    :goto_1
    iget v3, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 47
    iput v3, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    .line 48
    iget v1, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 49
    iput v2, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    .line 50
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/gh;->c:Lcom/google/android/libraries/places/internal/gj;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/gj;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    .line 52
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/gh;->c:Lcom/google/android/libraries/places/internal/gj;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/gj;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 54
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/libraries/places/internal/gh;->d:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    .line 55
    iget v0, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    goto :goto_0

    .line 57
    :cond_5
    iget v3, p0, Lcom/google/android/libraries/places/internal/gh;->f:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 58
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 59
    iput v2, p0, Lcom/google/android/libraries/places/internal/gh;->e:I

    :goto_4
    if-le v1, v0, :cond_7

    .line 60
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/gh;->c:Lcom/google/android/libraries/places/internal/gj;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/gj;->a(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v3, v4

    .line 62
    iput v3, p0, Lcom/google/android/libraries/places/internal/gh;->f:I

    .line 63
    :cond_7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_8
    sget-object v0, Lcom/google/android/libraries/places/internal/gi;->c:Lcom/google/android/libraries/places/internal/gi;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    sget-object v1, Lcom/google/android/libraries/places/internal/gi;->d:Lcom/google/android/libraries/places/internal/gi;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/go;->b(Z)V

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gi;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 10
    sget-object v0, Lcom/google/android/libraries/places/internal/gi;->d:Lcom/google/android/libraries/places/internal/gi;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gh;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->g:Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    sget-object v1, Lcom/google/android/libraries/places/internal/gi;->c:Lcom/google/android/libraries/places/internal/gi;

    if-eq v0, v1, :cond_1

    .line 13
    sget-object v0, Lcom/google/android/libraries/places/internal/gi;->a:Lcom/google/android/libraries/places/internal/gi;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    return v2

    :cond_1
    return v3

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/gi;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->a:Lcom/google/android/libraries/places/internal/gi;

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gh;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/gh;->g:Ljava/lang/Object;

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
