.class public Lcom/instabug/bug/settings/a;
.super Ljava/lang/Object;
.source "BugSettings.java"


# static fields
.field private static a:Lcom/instabug/bug/settings/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/bug/settings/a;

    invoke-direct {v0}, Lcom/instabug/bug/settings/a;-><init>()V

    sput-object v0, Lcom/instabug/bug/settings/a;->a:Lcom/instabug/bug/settings/a;

    .line 2
    invoke-static {p0}, Lcom/instabug/bug/settings/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static r()Lcom/instabug/bug/settings/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/settings/a;->a:Lcom/instabug/bug/settings/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/bug/settings/a;

    invoke-direct {v0}, Lcom/instabug/bug/settings/a;-><init>()V

    sput-object v0, Lcom/instabug/bug/settings/a;->a:Lcom/instabug/bug/settings/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/bug/settings/a;->a:Lcom/instabug/bug/settings/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/instabug/bug/settings/AttachmentsTypesParams;
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/bug/settings/c;->a(J)V

    return-void
.end method

.method public a(Lcom/instabug/bug/h/a$a;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->a(Lcom/instabug/bug/h/a$a;)V

    return-void
.end method

.method public a(Lcom/instabug/bug/settings/AttachmentsTypesParams;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->a(Lcom/instabug/bug/settings/AttachmentsTypesParams;)Lcom/instabug/bug/settings/b;

    return-void
.end method

.method public a(Lcom/instabug/library/OnSdkDismissCallback;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->a(Lcom/instabug/library/OnSdkDismissCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/bug/settings/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 10
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/bug/settings/c;->b(J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->b(Z)V

    return-void
.end method

.method public c()Lcom/instabug/bug/h/a$a;
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->c()Lcom/instabug/bug/h/a$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->c(Z)V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/b;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/c;->a(Z)V

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->d(Z)V

    return-void
.end method

.method public f()Lcom/instabug/library/OnSdkDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->e()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/b;->e(Z)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/ReportCategory;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/c;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowTakeExtraScreenshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowAttachImageFromGallery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowScreenRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->g()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->h()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->i()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/c;->f()Lcom/instabug/bug/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/c;->e()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->j()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/b;->l()Lcom/instabug/bug/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/b;->k()Z

    move-result v0

    return v0
.end method
