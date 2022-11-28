.class public Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;
.super Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;
.source "StringMemoryAvailablePredicate.java"


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;->b:J

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x28

    add-long/2addr v0, v2

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;->isMemoryAvailable(J)Z

    move-result v0

    return v0
.end method
