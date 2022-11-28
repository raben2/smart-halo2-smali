.class public Lcom/instabug/library/util/memory/predicate/BitmapMemoryAvailablePredicate;
.super Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;
.source "BitmapMemoryAvailablePredicate.java"


# instance fields
.field private final b:Landroid/graphics/Bitmap$Config;
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field private final c:[I
    .annotation build Landroidx/annotation/Size;
        value = 0x2L
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;[I)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Lio/reactivex/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/util/memory/predicate/BitmapMemoryAvailablePredicate;->b:Landroid/graphics/Bitmap$Config;

    const/4 p1, 0x2

    .line 3
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/util/memory/predicate/BitmapMemoryAvailablePredicate;->c:[I

    return-void
.end method

.method private b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/memory/predicate/BitmapMemoryAvailablePredicate;->b:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v2, Lcom/instabug/library/util/memory/predicate/BitmapMemoryAvailablePredicate$a;->a:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    return v2

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public check()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/memory/predicate/BitmapMemoryAvailablePredicate;->c:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    mul-int v1, v1, v0

    invoke-direct {p0}, Lcom/instabug/library/util/memory/predicate/BitmapMemoryAvailablePredicate;->b()I

    move-result v0

    mul-int v1, v1, v0

    int-to-long v0, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;->isMemoryAvailable(J)Z

    move-result v0

    return v0
.end method
