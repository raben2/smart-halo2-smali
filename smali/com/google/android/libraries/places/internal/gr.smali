.class final Lcom/google/android/libraries/places/internal/gr;
.super Lcom/google/android/libraries/places/internal/gh;
.source "PG"


# instance fields
.field private final synthetic g:Lcom/google/android/libraries/places/internal/gs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/gs;Lcom/google/android/libraries/places/internal/gq;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gr;->g:Lcom/google/android/libraries/places/internal/gs;

    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/gh;-><init>(Lcom/google/android/libraries/places/internal/gq;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gr;->g:Lcom/google/android/libraries/places/internal/gs;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/gs;->a:Lcom/google/android/libraries/places/internal/gj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gh;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/gj;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method final b(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
