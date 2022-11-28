.class Lcom/instabug/chat/ui/g/a$b;
.super Ljava/lang/Object;
.source "ChatsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/ui/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Lcom/instabug/library/ui/custom/CircularImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/instabug/chat/R$id;->conversation_list_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/instabug/chat/ui/g/a$b;->f:Landroid/widget/LinearLayout;

    .line 4
    sget v0, Lcom/instabug/chat/R$id;->instabug_txt_message_sender:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/chat/ui/g/a$b;->a:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/instabug/chat/R$id;->instabug_message_sender_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/ui/custom/CircularImageView;

    iput-object v0, p0, Lcom/instabug/chat/ui/g/a$b;->b:Lcom/instabug/library/ui/custom/CircularImageView;

    .line 8
    sget v0, Lcom/instabug/chat/R$id;->instabug_txt_message_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/chat/ui/g/a$b;->c:Landroid/widget/TextView;

    .line 10
    sget v0, Lcom/instabug/chat/R$id;->instabug_unread_messages_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/chat/ui/g/a$b;->e:Landroid/widget/TextView;

    .line 12
    sget v0, Lcom/instabug/chat/R$id;->instabug_txt_message_snippet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/chat/ui/g/a$b;->d:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/g/a$b;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/g/a$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/g/a$b;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/g/a$b;->f:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/g/a$b;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/chat/ui/g/a$b;)Lcom/instabug/library/ui/custom/CircularImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/g/a$b;->b:Lcom/instabug/library/ui/custom/CircularImageView;

    return-object p0
.end method
