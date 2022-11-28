.class Llayout/LeftDrawerLayout$1;
.super Ljava/lang/Object;
.source "LeftDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/LeftDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/LeftDrawerLayout;


# direct methods
.method constructor <init>(Llayout/LeftDrawerLayout;)V
    .locals 0

    .line 122
    iput-object p1, p0, Llayout/LeftDrawerLayout$1;->this$0:Llayout/LeftDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object p1, p0, Llayout/LeftDrawerLayout$1;->this$0:Llayout/LeftDrawerLayout;

    iget v0, p1, Llayout/LeftDrawerLayout;->enabledInstabugClickCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Llayout/LeftDrawerLayout;->enabledInstabugClickCount:I

    .line 127
    iget-object p1, p0, Llayout/LeftDrawerLayout$1;->this$0:Llayout/LeftDrawerLayout;

    iget p1, p1, Llayout/LeftDrawerLayout;->enabledInstabugClickCount:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Llayout/LeftDrawerLayout$1;->this$0:Llayout/LeftDrawerLayout;

    const/4 v0, 0x0

    iput v0, p1, Llayout/LeftDrawerLayout;->enabledInstabugClickCount:I

    .line 129
    new-array p1, v1, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    sget-object v1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SHAKE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/instabug/bug/BugReporting;->setInvocationEvents([Lcom/instabug/library/invocation/InstabugInvocationEvent;)V

    .line 130
    iget-object p1, p0, Llayout/LeftDrawerLayout$1;->this$0:Llayout/LeftDrawerLayout;

    invoke-virtual {p1}, Llayout/LeftDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1100f8

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
