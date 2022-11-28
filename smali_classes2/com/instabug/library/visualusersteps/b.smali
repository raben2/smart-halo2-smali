.class public Lcom/instabug/library/visualusersteps/b;
.super Ljava/lang/Object;
.source "LabelFrame.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/instabug/library/visualusersteps/b;",
        ">;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "CO_COMPARETO_INCORRECT_FLOATING",
        "EQ_COMPARETO_USE_OBJECT_EQUALS"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/b;->a:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/instabug/library/visualusersteps/b;->b:F

    .line 4
    iput p2, p0, Lcom/instabug/library/visualusersteps/b;->c:F

    return-void
.end method

.method private d()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/b;->c()F

    move-result v0

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/b;->c()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/b;->a()F

    move-result v1

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/b;->a()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/visualusersteps/b;->b:F

    return v0
.end method

.method public a(Lcom/instabug/library/visualusersteps/b;)I
    .locals 2
    .param p1    # Lcom/instabug/library/visualusersteps/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/b;->d()F

    move-result v0

    invoke-direct {p1}, Lcom/instabug/library/visualusersteps/b;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/b;->d()F

    move-result v0

    invoke-direct {p1}, Lcom/instabug/library/visualusersteps/b;->d()F

    move-result p1

    const/4 v1, -0x1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    :cond_1
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/visualusersteps/b;->c:F

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/instabug/library/visualusersteps/b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/b;->a(Lcom/instabug/library/visualusersteps/b;)I

    move-result p1

    return p1
.end method
