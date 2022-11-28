.class public Lcom/instabug/library/annotation/e/c;
.super Ljava/lang/Object;
.source "PathRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/annotation/e/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)Lcom/instabug/library/annotation/e/c$a;
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/library/annotation/e/c$a;

    invoke-direct {v0}, Lcom/instabug/library/annotation/e/c$a;-><init>()V

    .line 3
    new-instance v1, Lcom/instabug/library/annotation/e/a;

    invoke-direct {v1, p1}, Lcom/instabug/library/annotation/e/a;-><init>(Landroid/graphics/Path;)V

    .line 4
    sget-object p1, Lcom/instabug/library/annotation/e/e;->OVAL:Lcom/instabug/library/annotation/e/e;

    invoke-virtual {v1, p1}, Lcom/instabug/library/annotation/e/a;->a(Lcom/instabug/library/annotation/e/e;)Lcom/instabug/library/annotation/e/g;

    move-result-object p1

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/annotation/e/a;->a()Lcom/instabug/library/annotation/e/g;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/instabug/library/annotation/e/e;->RECT:Lcom/instabug/library/annotation/e/e;

    invoke-virtual {v1, v3}, Lcom/instabug/library/annotation/e/a;->a(Lcom/instabug/library/annotation/e/e;)Lcom/instabug/library/annotation/e/g;

    move-result-object v1

    .line 9
    iget v3, v2, Lcom/instabug/library/annotation/e/g;->c:F

    iget v4, v1, Lcom/instabug/library/annotation/e/g;->c:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    iget v4, p1, Lcom/instabug/library/annotation/e/g;->c:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 11
    iget p1, v2, Lcom/instabug/library/annotation/e/g;->f:F

    cmpl-float p1, p1, v5

    if-gtz p1, :cond_3

    iget p1, v2, Lcom/instabug/library/annotation/e/g;->g:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget p1, v2, Lcom/instabug/library/annotation/e/g;->l:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 16
    iget p1, v2, Lcom/instabug/library/annotation/e/g;->i:I

    iget v1, v2, Lcom/instabug/library/annotation/e/g;->k:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    iget p1, v2, Lcom/instabug/library/annotation/e/g;->j:I

    iget v3, v2, Lcom/instabug/library/annotation/e/g;->h:I

    sub-int/2addr p1, v3

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v1, :cond_1

    .line 18
    sget-object p1, Lcom/instabug/library/annotation/e/e;->LINE:Lcom/instabug/library/annotation/e/e;

    iput-object p1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    goto :goto_0

    .line 20
    :cond_1
    sget-object p1, Lcom/instabug/library/annotation/e/e;->ARROW:Lcom/instabug/library/annotation/e/e;

    iput-object p1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    .line 22
    :goto_0
    iget p1, v2, Lcom/instabug/library/annotation/e/g;->b:I

    iput p1, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    goto :goto_4

    .line 24
    :cond_2
    sget-object p1, Lcom/instabug/library/annotation/e/e;->NONE:Lcom/instabug/library/annotation/e/e;

    iput-object p1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    goto :goto_4

    .line 25
    :cond_3
    :goto_1
    sget-object p1, Lcom/instabug/library/annotation/e/e;->NONE:Lcom/instabug/library/annotation/e/e;

    iput-object p1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    goto :goto_4

    .line 41
    :cond_4
    iget v2, v1, Lcom/instabug/library/annotation/e/g;->c:F

    iget v3, p1, Lcom/instabug/library/annotation/e/g;->c:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 42
    iget p1, v1, Lcom/instabug/library/annotation/e/g;->f:F

    cmpl-float p1, p1, v5

    if-gtz p1, :cond_6

    iget p1, v1, Lcom/instabug/library/annotation/e/g;->g:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_5

    goto :goto_2

    .line 46
    :cond_5
    sget-object p1, Lcom/instabug/library/annotation/e/e;->RECT:Lcom/instabug/library/annotation/e/e;

    iput-object p1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    .line 47
    iget p1, v1, Lcom/instabug/library/annotation/e/g;->b:I

    iput p1, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    .line 48
    iget p1, v1, Lcom/instabug/library/annotation/e/g;->e:F

    iput p1, v0, Lcom/instabug/library/annotation/e/c$a;->c:F

    goto :goto_4

    .line 49
    :cond_6
    :goto_2
    sget-object p1, Lcom/instabug/library/annotation/e/e;->NONE:Lcom/instabug/library/annotation/e/e;

    iput-object p1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    goto :goto_4

    .line 56
    :cond_7
    iget v1, p1, Lcom/instabug/library/annotation/e/g;->f:F

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_9

    iget v1, p1, Lcom/instabug/library/annotation/e/g;->g:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_8

    goto :goto_3

    .line 60
    :cond_8
    sget-object v1, Lcom/instabug/library/annotation/e/e;->OVAL:Lcom/instabug/library/annotation/e/e;

    iput-object v1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    .line 61
    iget v1, p1, Lcom/instabug/library/annotation/e/g;->b:I

    iput v1, v0, Lcom/instabug/library/annotation/e/c$a;->b:I

    .line 62
    iget p1, p1, Lcom/instabug/library/annotation/e/g;->e:F

    iput p1, v0, Lcom/instabug/library/annotation/e/c$a;->c:F

    goto :goto_4

    .line 63
    :cond_9
    :goto_3
    sget-object p1, Lcom/instabug/library/annotation/e/e;->NONE:Lcom/instabug/library/annotation/e/e;

    iput-object p1, v0, Lcom/instabug/library/annotation/e/c$a;->a:Lcom/instabug/library/annotation/e/e;

    :goto_4
    return-object v0
.end method
