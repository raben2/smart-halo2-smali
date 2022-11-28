.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyAnalyticsSummary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummaryOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLICKS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

.field public static final ERRORS_FIELD_NUMBER:I = 0x4

.field public static final IMPRESSIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_OF_DAY_MILLIS_FIELD_NUMBER:I = 0x1


# instance fields
.field private clicks_:I

.field private errors_:I

.field private impressions_:I

.field private startOfDayMillis_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4824
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;-><init>()V

    .line 4827
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    .line 4828
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4346
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6700()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 4341
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;J)V
    .locals 0

    .line 4341
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setStartOfDayMillis(J)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    .line 4341
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearStartOfDayMillis()V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V
    .locals 0

    .line 4341
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setImpressions(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    .line 4341
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearImpressions()V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V
    .locals 0

    .line 4341
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setClicks(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    .line 4341
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearClicks()V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V
    .locals 0

    .line 4341
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setErrors(I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    .line 4341
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearErrors()V

    return-void
.end method

.method private clearClicks()V
    .locals 1

    const/4 v0, 0x0

    .line 4462
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clicks_:I

    return-void
.end method

.method private clearErrors()V
    .locals 1

    const/4 v0, 0x0

    .line 4500
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->errors_:I

    return-void
.end method

.method private clearImpressions()V
    .locals 1

    const/4 v0, 0x0

    .line 4424
    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->impressions_:I

    return-void
.end method

.method private clearStartOfDayMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4386
    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->startOfDayMillis_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 4833
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    .line 4578
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    .line 4581
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4555
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4561
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4519
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4526
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4566
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4573
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4543
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4550
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4506
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4513
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4531
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4538
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;",
            ">;"
        }
    .end annotation

    .line 4839
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setClicks(I)V
    .locals 0

    .line 4451
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clicks_:I

    return-void
.end method

.method private setErrors(I)V
    .locals 0

    .line 4489
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->errors_:I

    return-void
.end method

.method private setImpressions(I)V
    .locals 0

    .line 4413
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->impressions_:I

    return-void
.end method

.method private setStartOfDayMillis(J)V
    .locals 0

    .line 4374
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->startOfDayMillis_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4772
    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4817
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4811
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4796
    :pswitch_2
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4798
    const-class p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    monitor-enter p2

    .line 4799
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4801
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4804
    sput-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->PARSER:Lcom/google/protobuf/Parser;

    .line 4806
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

    .line 4793
    :pswitch_3
    sget-object p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 4780
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "startOfDayMillis_"

    aput-object v0, p1, p3

    const-string p3, "impressions_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "clicks_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "errors_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0002\u0002\u0004\u0003\u0004\u0004\u0004"

    .line 4789
    sget-object p3, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4777
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p1

    .line 4774
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;-><init>()V

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

.method public getClicks()I
    .locals 1

    .line 4439
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clicks_:I

    return v0
.end method

.method public getErrors()I
    .locals 1

    .line 4477
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->errors_:I

    return v0
.end method

.method public getImpressions()I
    .locals 1

    .line 4401
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->impressions_:I

    return v0
.end method

.method public getStartOfDayMillis()J
    .locals 2

    .line 4361
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->startOfDayMillis_:J

    return-wide v0
.end method
