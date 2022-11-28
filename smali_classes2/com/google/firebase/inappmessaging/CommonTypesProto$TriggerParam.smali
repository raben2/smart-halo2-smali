.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final FLOAT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private doubleValue_:D

.field private floatValue_:F

.field private intValue_:J

.field private name_:Ljava/lang/String;

.field private stringValue_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3202
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;-><init>()V

    .line 3205
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 3206
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2639
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2640
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    const-string v0, ""

    .line 2641
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3700()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1

    .line 2634
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V
    .locals 0

    .line 2634
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    .line 2634
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearName()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2634
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V
    .locals 0

    .line 2634
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    .line 2634
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearStringValue()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2634
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setStringValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;J)V
    .locals 0

    .line 2634
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setIntValue(J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    .line 2634
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearIntValue()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;F)V
    .locals 0

    .line 2634
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setFloatValue(F)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    .line 2634
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearFloatValue()V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;D)V
    .locals 0

    .line 2634
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setDoubleValue(D)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    .line 2634
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearDoubleValue()V

    return-void
.end method

.method private clearDoubleValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2837
    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->doubleValue_:D

    return-void
.end method

.method private clearFloatValue()V
    .locals 1

    const/4 v0, 0x0

    .line 2811
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->floatValue_:F

    return-void
.end method

.method private clearIntValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2785
    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->intValue_:J

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 2697
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearStringValue()V
    .locals 1

    .line 2749
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1

    .line 3211
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 2915
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 2918
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2892
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2898
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2856
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2863
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2903
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2910
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2880
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2887
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2843
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2850
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2868
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2875
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation

    .line 3217
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDoubleValue(D)V
    .locals 0

    .line 2830
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->doubleValue_:D

    return-void
.end method

.method private setFloatValue(F)V
    .locals 0

    .line 2804
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->floatValue_:F

    return-void
.end method

.method private setIntValue(J)V
    .locals 0

    .line 2778
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->intValue_:J

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 2683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2685
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2710
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2711
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 0

    .line 2740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2742
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method private setStringValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2757
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2758
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3149
    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3195
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3189
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3174
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3176
    const-class p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    monitor-enter p2

    .line 3177
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3179
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3182
    sput-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3184
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

    .line 3171
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 3157
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "stringValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "intValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "floatValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "doubleValue_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0001\u0005\u0000"

    .line 3167
    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3154
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p1

    .line 3151
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;-><init>()V

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

.method public getDoubleValue()D
    .locals 2

    .line 2822
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->doubleValue_:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 1

    .line 2796
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->floatValue_:F

    return v0
.end method

.method public getIntValue()J
    .locals 2

    .line 2770
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->intValue_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2656
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2670
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 2723
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2732
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
