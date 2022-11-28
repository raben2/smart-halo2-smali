.class public final Lcom/google/android/libraries/places/internal/gq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/gj;

.field public final b:Z

.field public final c:Lcom/google/android/libraries/places/internal/gs;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/gs;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/gm;->a:Lcom/google/android/libraries/places/internal/gm;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 3
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/libraries/places/internal/gq;-><init>(Lcom/google/android/libraries/places/internal/gs;ZLcom/google/android/libraries/places/internal/gj;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/gs;ZLcom/google/android/libraries/places/internal/gj;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gq;->c:Lcom/google/android/libraries/places/internal/gs;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/gq;->b:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/gq;->a:Lcom/google/android/libraries/places/internal/gj;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lcom/google/android/libraries/places/internal/gq;->d:I

    return-void
.end method
