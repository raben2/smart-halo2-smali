.class Lcom/instabug/library/p/a$a;
.super Ljava/lang/Object;
.source "MotionEventRecognizer.java"

# interfaces
.implements Lcom/instabug/library/visualusersteps/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/p/a;->a(Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instabug/library/p/a;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/p/a$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/instabug/library/p/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/instabug/library/p/a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V
    .locals 13
    .param p1    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/visualusersteps/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/p/a$a;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v1

    iget-object v3, p0, Lcom/instabug/library/p/a$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/instabug/library/p/a$a;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/d;->b()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/d;->a()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v7

    iget-object v9, p0, Lcom/instabug/library/p/a$a;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/instabug/library/p/a$a;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/d;->b()Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/d;->a()Ljava/lang/String;

    move-result-object v12

    move-object v8, p1

    .line 26
    invoke-virtual/range {v7 .. v12}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
