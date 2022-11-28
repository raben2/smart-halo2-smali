.class final Lcom/google/android/libraries/places/internal/hr;
.super Lcom/google/android/libraries/places/internal/ha;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ha<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field private final transient c:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ha;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hr;->a:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/libraries/places/internal/hr;->b:I

    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/hr;->c:I

    return-void
.end method


# virtual methods
.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/android/libraries/places/internal/hr;->c:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/go;->a(II)I

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hr;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/libraries/places/internal/hr;->b:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/libraries/places/internal/hr;->c:I

    return v0
.end method
