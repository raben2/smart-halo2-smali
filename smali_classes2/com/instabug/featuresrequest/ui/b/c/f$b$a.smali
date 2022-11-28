.class Lcom/instabug/featuresrequest/ui/b/c/f$b$a;
.super Ljava/lang/Object;
.source "FeaturesListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/b/c/f$b;->a(Lcom/instabug/featuresrequest/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/b/c/f$b;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$b$a;->a:Lcom/instabug/featuresrequest/ui/b/c/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f$b$a;->a:Lcom/instabug/featuresrequest/ui/b/c/f$b;

    iget-object v0, v0, Lcom/instabug/featuresrequest/ui/b/c/f$b;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(Lcom/instabug/featuresrequest/ui/b/c/f;)Lcom/instabug/featuresrequest/ui/b/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f$b$a;->a:Lcom/instabug/featuresrequest/ui/b/c/f$b;

    iget-object v0, v0, Lcom/instabug/featuresrequest/ui/b/c/f$b;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(Lcom/instabug/featuresrequest/ui/b/c/f;)Lcom/instabug/featuresrequest/ui/b/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->j()V

    :cond_0
    return-void
.end method
