.class public Lcom/instabug/survey/e/c/i;
.super Ljava/lang/Object;
.source "UserInteraction.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/instabug/survey/e/c/g;

.field private d:I

.field private e:Z

.field private f:J

.field private g:J

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Lcom/instabug/survey/e/c/f;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/instabug/survey/e/c/i;->l:I

    .line 7
    iput p1, p0, Lcom/instabug/survey/e/c/i;->d:I

    .line 8
    iput-boolean v0, p0, Lcom/instabug/survey/e/c/i;->e:Z

    .line 9
    iput-boolean v0, p0, Lcom/instabug/survey/e/c/i;->h:Z

    .line 10
    sget-object p1, Lcom/instabug/survey/e/c/f;->NOT_AVAILABLE:Lcom/instabug/survey/e/c/f;

    iput-object p1, p0, Lcom/instabug/survey/e/c/i;->n:Lcom/instabug/survey/e/c/f;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/instabug/survey/e/c/i;->m:Z

    .line 12
    new-instance p1, Lcom/instabug/survey/e/c/g;

    invoke-direct {p1}, Lcom/instabug/survey/e/c/g;-><init>()V

    iput-object p1, p0, Lcom/instabug/survey/e/c/i;->c:Lcom/instabug/survey/e/c/g;

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/instabug/survey/e/c/i;->j:I

    .line 14
    iput p1, p0, Lcom/instabug/survey/e/c/i;->i:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/instabug/survey/e/c/i;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/instabug/survey/e/c/i;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/instabug/survey/e/c/i;->f:J

    return-void
.end method

.method public a(Lcom/instabug/survey/e/c/f;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/instabug/survey/e/c/i;->n:Lcom/instabug/survey/e/c/f;

    return-void
.end method

.method public a(Lcom/instabug/survey/e/c/g;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/survey/e/c/i;->c:Lcom/instabug/survey/e/c/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/e/c/i;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/instabug/survey/e/c/i;->k:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/instabug/survey/e/c/i;->i:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/survey/e/c/i;->j:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/instabug/survey/e/c/i;->g:J

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/survey/e/c/i;->e:Z

    return-void
.end method

.method public c()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/instabug/survey/e/c/i;->f:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/instabug/survey/e/c/i;->l:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/survey/e/c/i;->a:J

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/survey/e/c/i;->h:Z

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/e/c/i;->j:I

    return v0
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/survey/e/c/i;->m:Z

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/e/c/i;->l:I

    return v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/e/c/i;->g:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/e/c/i;->a:J

    return-wide v0
.end method

.method public h()Lcom/instabug/survey/e/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/i;->n:Lcom/instabug/survey/e/c/f;

    return-object v0
.end method

.method public i()Lcom/instabug/survey/e/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/i;->c:Lcom/instabug/survey/e/c/g;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/e/c/i;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/survey/e/c/i;->i:I

    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/e/c/i;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/survey/e/c/i;->j:I

    return v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/e/c/i;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/survey/e/c/i;->l:I

    invoke-virtual {p0, v0}, Lcom/instabug/survey/e/c/i;->c(I)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/e/c/i;->k:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/e/c/i;->e:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/e/c/i;->h:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/e/c/i;->m:Z

    return v0
.end method
