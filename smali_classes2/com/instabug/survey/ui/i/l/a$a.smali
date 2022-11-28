.class Lcom/instabug/survey/ui/i/l/a$a;
.super Ljava/lang/Object;
.source "TextQuestionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/l/a;->a(Lcom/instabug/survey/models/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/ui/i/l/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/i/l/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/l/a$a;->a:Lcom/instabug/survey/ui/i/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/l/a$a;->a:Lcom/instabug/survey/ui/i/l/a;

    iget-object v1, v0, Lcom/instabug/survey/ui/i/l/a;->i:Landroid/widget/EditText;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
