.class public Lcom/instabug/library/annotation/g/a;
.super Ljava/lang/Object;
.source "AspectRatioCalculator.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/instabug/library/annotation/g/a;->a:F

    .line 3
    iput v0, p0, Lcom/instabug/library/annotation/g/a;->b:F

    .line 4
    iput v0, p0, Lcom/instabug/library/annotation/g/a;->c:F

    .line 5
    iput v0, p0, Lcom/instabug/library/annotation/g/a;->d:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/instabug/library/annotation/g/a;->c:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/instabug/library/annotation/g/a;->a:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    return v0
.end method

.method public a(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/library/annotation/g/a;->a:F

    return-void
.end method

.method public b()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/instabug/library/annotation/g/a;->d:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/instabug/library/annotation/g/a;->b:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    return v0
.end method

.method public b(F)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/instabug/library/annotation/g/a;->c:F

    invoke-virtual {p0, v0}, Lcom/instabug/library/annotation/g/a;->a(F)V

    .line 3
    iput p1, p0, Lcom/instabug/library/annotation/g/a;->c:F

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/annotation/g/a;->d:F

    invoke-virtual {p0, v0}, Lcom/instabug/library/annotation/g/a;->d(F)V

    .line 2
    iput p1, p0, Lcom/instabug/library/annotation/g/a;->d:F

    return-void
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/annotation/g/a;->b:F

    return-void
.end method
