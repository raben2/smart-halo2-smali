.class Lcom/instabug/featuresrequest/ui/b/c/b$a;
.super Ljava/lang/Object;
.source "FeatureHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/b/c/b;->b(Lcom/instabug/featuresrequest/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/d/b;

.field final synthetic b:Lcom/instabug/featuresrequest/ui/b/c/b;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/b;Lcom/instabug/featuresrequest/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->b:Lcom/instabug/featuresrequest/ui/b/c/b;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->i()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/instabug/featuresrequest/d/b;->b(I)V

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->a(Z)V

    .line 4
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->b:Lcom/instabug/featuresrequest/ui/b/c/b;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Ljava/lang/Boolean;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->b:Lcom/instabug/featuresrequest/ui/b/c/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/ui/b/c/b;)Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    move-result-object p1

    const-string v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->setRippleColor(I)V

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->b:Lcom/instabug/featuresrequest/ui/b/c/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/b;->b(Lcom/instabug/featuresrequest/ui/b/c/b;)Lcom/instabug/featuresrequest/c/a;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-interface {p1, v0}, Lcom/instabug/featuresrequest/c/a;->a(Lcom/instabug/featuresrequest/d/b;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->a(Z)V

    .line 9
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->i()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/instabug/featuresrequest/d/b;->b(I)V

    .line 10
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->b:Lcom/instabug/featuresrequest/ui/b/c/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/ui/b/c/b;)Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    move-result-object p1

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->setRippleColor(I)V

    .line 11
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->b:Lcom/instabug/featuresrequest/ui/b/c/b;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Ljava/lang/Boolean;)V

    .line 12
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->b:Lcom/instabug/featuresrequest/ui/b/c/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/b;->b(Lcom/instabug/featuresrequest/ui/b/c/b;)Lcom/instabug/featuresrequest/c/a;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-interface {p1, v0}, Lcom/instabug/featuresrequest/c/a;->c(Lcom/instabug/featuresrequest/d/b;)V

    :goto_0
    return-void
.end method
