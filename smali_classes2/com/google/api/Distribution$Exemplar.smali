.class public final Lcom/google/api/Distribution$Exemplar;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$ExemplarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Exemplar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$Exemplar$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Distribution$Exemplar;",
        "Lcom/google/api/Distribution$Exemplar$Builder;",
        ">;",
        "Lcom/google/api/Distribution$ExemplarOrBuilder;"
    }
.end annotation


# static fields
.field public static final ATTACHMENTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private attachments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:Lcom/google/protobuf/Timestamp;

.field private value_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3441
    new-instance v0, Lcom/google/api/Distribution$Exemplar;

    invoke-direct {v0}, Lcom/google/api/Distribution$Exemplar;-><init>()V

    .line 3444
    sput-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    .line 3445
    const-class v1, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2630
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2631
    invoke-static {}, Lcom/google/api/Distribution$Exemplar;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$4000()Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 2625
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/api/Distribution$Exemplar;D)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->setValue(D)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/api/Distribution$Exemplar;)V
    .locals 0

    .line 2625
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->clearValue()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->setTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->mergeTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/api/Distribution$Exemplar;)V
    .locals 0

    .line 2625
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->setAttachments(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Any;)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->addAttachments(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->addAttachments(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/api/Distribution$Exemplar;Ljava/lang/Iterable;)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->addAllAttachments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/api/Distribution$Exemplar;)V
    .locals 0

    .line 2625
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->clearAttachments()V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/api/Distribution$Exemplar;I)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$Exemplar;->removeAttachments(I)V

    return-void
.end method

.method private addAllAttachments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)V"
        }
    .end annotation

    .line 2905
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 2906
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAttachments(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 2886
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2887
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 2888
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAttachments(Lcom/google/protobuf/Any;)V
    .locals 1

    .line 2867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2868
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 2869
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAttachments()V
    .locals 1

    .line 2923
    invoke-static {}, Lcom/google/api/Distribution$Exemplar;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTimestamp()V
    .locals 1

    const/4 v0, 0x0

    .line 2736
    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2671
    iput-wide v0, p0, Lcom/google/api/Distribution$Exemplar;->value_:D

    return-void
.end method

.method private ensureAttachmentsIsMutable()V
    .locals 1

    .line 2828
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2829
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2830
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 3450
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    return-object v0
.end method

.method private mergeTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 2719
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2720
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 2721
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 2723
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 2725
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3018
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Exemplar$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3021
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$Exemplar;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2995
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/api/Distribution$Exemplar;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3001
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/api/Distribution$Exemplar;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2959
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2966
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3006
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3013
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2983
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2990
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2946
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2953
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2971
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2978
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Exemplar;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation

    .line 3456
    sget-object v0, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAttachments(I)V
    .locals 1

    .line 2939
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 2940
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAttachments(ILcom/google/protobuf/Any;)V
    .locals 1

    .line 2849
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2850
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar;->ensureAttachmentsIsMutable()V

    .line 2851
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 2706
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2707
    iput-object p1, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method private setValue(D)V
    .locals 0

    .line 2659
    iput-wide p1, p0, Lcom/google/api/Distribution$Exemplar;->value_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3389
    sget-object p2, Lcom/google/api/Distribution$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3434
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3428
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3413
    :pswitch_2
    sget-object p1, Lcom/google/api/Distribution$Exemplar;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3415
    const-class p2, Lcom/google/api/Distribution$Exemplar;

    monitor-enter p2

    .line 3416
    :try_start_0
    sget-object p1, Lcom/google/api/Distribution$Exemplar;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3418
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3421
    sput-object p1, Lcom/google/api/Distribution$Exemplar;->PARSER:Lcom/google/protobuf/Parser;

    .line 3423
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

    .line 3410
    :pswitch_3
    sget-object p1, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 3397
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "attachments_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/protobuf/Any;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0000\u0002\t\u0003\u001b"

    .line 3406
    sget-object p3, Lcom/google/api/Distribution$Exemplar;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Exemplar;

    invoke-static {p3, p2, p1}, Lcom/google/api/Distribution$Exemplar;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3394
    :pswitch_5
    new-instance p1, Lcom/google/api/Distribution$Exemplar$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Distribution$Exemplar$Builder;-><init>(Lcom/google/api/Distribution$1;)V

    return-object p1

    .line 3391
    :pswitch_6
    new-instance p1, Lcom/google/api/Distribution$Exemplar;

    invoke-direct {p1}, Lcom/google/api/Distribution$Exemplar;-><init>()V

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

.method public getAttachments(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 2808
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1
.end method

.method public getAttachmentsCount()I
    .locals 1

    .line 2791
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAttachmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 2757
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAttachmentsOrBuilder(I)Lcom/google/protobuf/AnyOrBuilder;
    .locals 1

    .line 2825
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public getAttachmentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2774
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->attachments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 2646
    iget-wide v0, p0, Lcom/google/api/Distribution$Exemplar;->value_:D

    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .line 2685
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
