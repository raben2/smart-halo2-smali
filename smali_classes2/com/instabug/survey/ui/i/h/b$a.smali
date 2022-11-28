.class Lcom/instabug/survey/ui/i/h/b$a;
.super Ljava/lang/Object;
.source "SurveyMCQGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/h/b;->a(Ljava/lang/String;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/instabug/survey/ui/i/h/b;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/i/h/b;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/h/b$a;->c:Lcom/instabug/survey/ui/i/h/b;

    iput p2, p0, Lcom/instabug/survey/ui/i/h/b$a;->a:I

    iput-object p3, p0, Lcom/instabug/survey/ui/i/h/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b$a;->c:Lcom/instabug/survey/ui/i/h/b;

    iget v1, p0, Lcom/instabug/survey/ui/i/h/b$a;->a:I

    invoke-static {v0, v1}, Lcom/instabug/survey/ui/i/h/b;->a(Lcom/instabug/survey/ui/i/h/b;I)V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b$a;->c:Lcom/instabug/survey/ui/i/h/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/h/b;->a(Lcom/instabug/survey/ui/i/h/b;)Lcom/instabug/survey/ui/i/h/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/b$a;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/instabug/survey/ui/i/h/b$b;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
