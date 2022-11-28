.class final Lcom/instabug/featuresrequest/g/j$b;
.super Lcom/instabug/featuresrequest/g/j$c;
.source "TextViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/g/j;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/g/j$b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/g/j$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/featuresrequest/g/j$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/instabug/featuresrequest/g/j$b;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/instabug/featuresrequest/g/j$b;->e:Z

    iput-object p6, p0, Lcom/instabug/featuresrequest/g/j$b;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/instabug/featuresrequest/g/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/g/j$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/g/j$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/featuresrequest/g/j$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/instabug/featuresrequest/g/j$b;->d:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/instabug/featuresrequest/g/j$b;->e:Z

    xor-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/instabug/featuresrequest/g/j$b;->f:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/instabug/featuresrequest/g/j;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/featuresrequest/g/j$b;->f:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
