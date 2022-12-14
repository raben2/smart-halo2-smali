.class public final Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$CardMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_HEX_COLOR_FIELD_NUMBER:I = 0x5

.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

.field public static final LANDSCAPE_IMAGE_URL_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTRAIT_IMAGE_URL_FIELD_NUMBER:I = 0x3

.field public static final PRIMARY_ACTION_BUTTON_FIELD_NUMBER:I = 0x6

.field public static final PRIMARY_ACTION_FIELD_NUMBER:I = 0x7

.field public static final SECONDARY_ACTION_BUTTON_FIELD_NUMBER:I = 0x8

.field public static final SECONDARY_ACTION_FIELD_NUMBER:I = 0x9

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private backgroundHexColor_:Ljava/lang/String;

.field private body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

.field private landscapeImageUrl_:Ljava/lang/String;

.field private portraitImageUrl_:Ljava/lang/String;

.field private primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

.field private primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

.field private secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2594
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;-><init>()V

    .line 2597
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    .line 2598
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1115
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1116
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    const-string v0, ""

    .line 1117
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    const-string v0, ""

    .line 1118
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1500()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 1110
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearTitle()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearBody()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPortraitImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearPortraitImageUrl()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPortraitImageUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setLandscapeImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearLandscapeImageUrl()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setLandscapeImageUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setBackgroundHexColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearBackgroundHexColor()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergePrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearPrimaryActionButton()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergePrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearPrimaryAction()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearSecondaryActionButton()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearSecondaryAction()V

    return-void
.end method

.method private clearBackgroundHexColor()V
    .locals 1

    .line 1451
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private clearBody()V
    .locals 1

    const/4 v0, 0x0

    .line 1248
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method

.method private clearLandscapeImageUrl()V
    .locals 1

    .line 1382
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearPortraitImageUrl()V
    .locals 1

    .line 1306
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPortraitImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearPrimaryAction()V
    .locals 1

    const/4 v0, 0x0

    .line 1606
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private clearPrimaryActionButton()V
    .locals 1

    const/4 v0, 0x0

    .line 1535
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-void
.end method

.method private clearSecondaryAction()V
    .locals 1

    const/4 v0, 0x0

    .line 1753
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private clearSecondaryActionButton()V
    .locals 1

    const/4 v0, 0x0

    .line 1687
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-void
.end method

.method private clearTitle()V
    .locals 1

    const/4 v0, 0x0

    .line 1182
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 2603
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object v0
.end method

.method private mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2

    .line 1231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1232
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 1233
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 1235
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 1237
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    :goto_0
    return-void
.end method

.method private mergePrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2

    .line 1588
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1589
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    .line 1590
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 1592
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    .line 1594
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    :goto_0
    return-void
.end method

.method private mergePrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 2

    .line 1517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1518
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    .line 1519
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 1521
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    goto :goto_0

    .line 1523
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    :goto_0
    return-void
.end method

.method private mergeSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2

    .line 1736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1737
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    .line 1738
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 1740
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    .line 1742
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    :goto_0
    return-void
.end method

.method private mergeSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 2

    .line 1667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1668
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    .line 1669
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    .line 1671
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    goto :goto_0

    .line 1673
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    :goto_0
    return-void
.end method

.method private mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2

    .line 1165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    .line 1167
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    .line 1169
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    .line 1171
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1832
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 1835
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1809
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1815
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1773
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1780
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1820
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1827
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1797
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1804
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1760
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1767
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1785
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1792
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;",
            ">;"
        }
    .end annotation

    .line 2609
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBackgroundHexColor(Ljava/lang/String;)V
    .locals 0

    .line 1438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1440
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1463
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1464
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 1218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method

.method private setLandscapeImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setLandscapeImageUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1396
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1397
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPortraitImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1294
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPortraitImageUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1319
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1320
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 1574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1575
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private setPrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 1503
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1504
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-void
.end method

.method private setSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 1723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1724
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private setSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    .line 1651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1652
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-void
.end method

.method private setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    .line 1152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2537
    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2587
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2581
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2566
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2568
    const-class p2, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    monitor-enter p2

    .line 2569
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2571
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2574
    sput-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 2576
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

    .line 2563
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    .line 2545
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "title_"

    aput-object v0, p1, p3

    const-string p3, "body_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "portraitImageUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "landscapeImageUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "backgroundHexColor_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "primaryActionButton_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "primaryAction_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "secondaryActionButton_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "secondaryAction_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u0208\u0004\u0208\u0005\u0208\u0006\t\u0007\t\u0008\t\t\t"

    .line 2559
    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2542
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object p1

    .line 2539
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;-><init>()V

    return-object p1

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

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLandscapeImageUrl()Ljava/lang/String;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLandscapeImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPortraitImageUrl()Ljava/lang/String;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrimaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSecondaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSecondaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrimaryAction()Z
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrimaryActionButton()Z
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSecondaryAction()Z
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSecondaryActionButton()Z
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

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

    .line 1131
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
