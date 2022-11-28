.class public Lcom/instabug/library/annotation/e/g;
.super Ljava/lang/Object;
.source "Weight.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/annotation/e/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/instabug/library/annotation/e/g;",
        ">;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "EQ_COMPARETO_USE_OBJECT_EQUALS",
        "UUF_UNUSED_FIELD",
        "URF_UNREAD_FIELD"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I

.field i:I

.field j:I

.field k:I

.field l:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/annotation/e/g;)I
    .locals 1

    .line 5
    iget p1, p1, Lcom/instabug/library/annotation/e/g;->a:I

    iget v0, p0, Lcom/instabug/library/annotation/e/g;->a:I

    if-le p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a()Lcom/instabug/library/annotation/e/g$a;
    .locals 2

    .line 1
    iget v0, p0, Lcom/instabug/library/annotation/e/g;->k:I

    iget v1, p0, Lcom/instabug/library/annotation/e/g;->i:I

    if-le v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/instabug/library/annotation/e/g$a;->BOTTOM:Lcom/instabug/library/annotation/e/g$a;

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/annotation/e/g$a;->TOP:Lcom/instabug/library/annotation/e/g$a;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/library/annotation/e/g;

    invoke-virtual {p0, p1}, Lcom/instabug/library/annotation/e/g;->a(Lcom/instabug/library/annotation/e/g;)I

    move-result p1

    return p1
.end method
