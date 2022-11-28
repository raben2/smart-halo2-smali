.class Lcom/instabug/featuresrequest/ui/c/e$a;
.super Ljava/lang/Object;
.source "TimelineAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/c/e;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/ui/c/e$c;Lcom/instabug/featuresrequest/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/d/a;

.field final synthetic b:Lcom/instabug/featuresrequest/ui/c/e;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/c/e;Lcom/instabug/featuresrequest/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/e$a;->b:Lcom/instabug/featuresrequest/ui/c/e;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/e$a;->a:Lcom/instabug/featuresrequest/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/e$a;->a:Lcom/instabug/featuresrequest/d/a;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/d/a;->j()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/d/a;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/e$a;->b:Lcom/instabug/featuresrequest/ui/c/e;

    iget-object v0, v0, Lcom/instabug/featuresrequest/ui/c/e;->b:Lcom/instabug/featuresrequest/ui/c/c;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/c/c;->v()V

    return-void
.end method
