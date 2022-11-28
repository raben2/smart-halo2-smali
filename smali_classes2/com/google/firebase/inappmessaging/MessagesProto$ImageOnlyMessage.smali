.class public final Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageOnlyMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private imageUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3092
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;-><init>()V

    .line 3095
    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    .line 3096
    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2664
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2665
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4400()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1

    .line 2659
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;Ljava/lang/String;)V
    .locals 0

    .line 2659
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 0

    .line 2659
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->clearImageUrl()V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2659
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->setImageUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 2659
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 2659
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 0

    .line 2659
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->clearAction()V

    return-void
.end method

.method private clearAction()V
    .locals 1

    const/4 v0, 0x0

    .line 2796
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private clearImageUrl()V
    .locals 1

    .line 2717
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1

    .line 3101
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object v0
.end method

.method private mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2

    .line 2779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2780
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    .line 2781
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    .line 2783
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    .line 2785
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;
    .locals 1

    .line 2875
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;
    .locals 1

    .line 2878
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2852
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2858
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2816
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2823
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2863
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2870
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2840
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2847
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2803
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2810
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2828
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2835
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;",
            ">;"
        }
    .end annotation

    .line 3107
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    .line 2766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2767
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-void
.end method

.method private setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 2704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2706
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setImageUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2729
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2730
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->imageUrl_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3042
    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3085
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3079
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3064
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3066
    const-class p2, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    monitor-enter p2

    .line 3067
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3069
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3072
    sput-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 3074
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

    .line 3061
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 3050
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "imageUrl_"

    aput-object v0, p1, p3

    const-string p3, "action_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    .line 3057
    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3047
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object p1

    .line 3044
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;-><init>()V

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

    .line 2756
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 2679
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2692
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->imageUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 2745
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->action_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
