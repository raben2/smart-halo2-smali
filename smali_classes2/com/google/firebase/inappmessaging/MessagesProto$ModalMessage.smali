.class public final Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModalMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_FIELD_NUMBER:I = 0x4

.field public static final ACTION_FIELD_NUMBER:I = 0x5

.field public static final BACKGROUND_HEX_COLOR_FIELD_NUMBER:I = 0x6

.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

.field private action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private backgroundHexColor_:Ljava/lang/String;

.field private body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

.field private imageUrl_:Ljava/lang/String;

.field private title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5278
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;-><init>()V

    .line 5281
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    .line 5282
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4233
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4234
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    const-string v0, ""

    .line 4235
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6900()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1

    .line 4228
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearTitle()V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearBody()V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Ljava/lang/String;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearImageUrl()V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setImageUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearActionButton()V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearAction()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Ljava/lang/String;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setBackgroundHexColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    .line 4228
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->clearBackgroundHexColor()V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4228
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAction()V
    .locals 1

    const/4 v0, 0x0

    .line 4594
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private clearActionButton()V
    .locals 1

    const/4 v0, 0x0

    .line 4518
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-void
.end method

.method private clearBackgroundHexColor()V
    .locals 1

    .line 4648
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private clearBody()V
    .locals 1

    const/4 v0, 0x0

    .line 4365
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method

.method private clearImageUrl()V
    .locals 1

    .line 4423
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearTitle()V
    .locals 1

    const/4 v0, 0x0

    .line 4299
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1

    .line 5287
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0
.end method

.method private mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2

    .line 4575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4576
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    .line 4577
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4578
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 4579
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    .line 4581
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    :goto_0
    return-void
.end method

.method private mergeActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 2

    .line 4498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4499
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    .line 4500
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4501
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 4502
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    goto :goto_0

    .line 4504
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    :goto_0
    return-void
.end method

.method private mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2

    .line 4348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4349
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 4350
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4351
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4352
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 4354
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    :goto_0
    return-void
.end method

.method private mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2

    .line 4282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4283
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 4284
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 4286
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 4288
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4740
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4743
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4717
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4723
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4681
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4688
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4728
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4735
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4705
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4712
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4668
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4675
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4693
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4700
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;",
            ">;"
        }
    .end annotation

    .line 5293
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 4560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4561
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private setActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 4482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4483
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-void
.end method

.method private setBackgroundHexColor(Ljava/lang/String;)V
    .locals 0

    .line 4635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4637
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4660
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4661
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 4335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4336
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method

.method private setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 4409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4411
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setImageUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4436
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4437
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 4269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4270
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5224
    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5271
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5265
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5250
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5252
    const-class p2, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    monitor-enter p2

    .line 5253
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5255
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5258
    sput-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5260
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 5247
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    .line 5232
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "title_"

    aput-object v0, p1, p3

    const-string p3, "body_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "imageUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "actionButton_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "action_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "backgroundHexColor_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u0208\u0004\t\u0005\t\u0006\u0208"

    .line 5243
    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5229
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object p1

    .line 5226
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 4548
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 4469
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 4610
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4623
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->backgroundHexColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 4325
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 4382
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4396
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->imageUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 4259
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 4535
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasActionButton()Z
    .locals 1

    .line 4455
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->actionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBody()Z
    .locals 1

    .line 4314
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 4248
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
