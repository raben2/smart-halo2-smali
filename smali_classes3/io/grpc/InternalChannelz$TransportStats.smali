.class public final Lio/grpc/InternalChannelz$TransportStats;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransportStats"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final keepAlivesSent:J

.field public final lastLocalStreamCreatedTimeNanos:J

.field public final lastMessageReceivedTimeNanos:J

.field public final lastMessageSentTimeNanos:J

.field public final lastRemoteStreamCreatedTimeNanos:J

.field public final localFlowControlWindow:J

.field public final messagesReceived:J

.field public final messagesSent:J

.field public final remoteFlowControlWindow:J

.field public final streamsFailed:J

.field public final streamsStarted:J

.field public final streamsSucceeded:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 1080
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->streamsStarted:J

    move-wide v1, p3

    .line 1081
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->lastLocalStreamCreatedTimeNanos:J

    move-wide v1, p5

    .line 1082
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->lastRemoteStreamCreatedTimeNanos:J

    move-wide v1, p7

    .line 1083
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->streamsSucceeded:J

    move-wide v1, p9

    .line 1084
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->streamsFailed:J

    move-wide v1, p11

    .line 1085
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->messagesSent:J

    move-wide/from16 v1, p13

    .line 1086
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->messagesReceived:J

    move-wide/from16 v1, p15

    .line 1087
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->keepAlivesSent:J

    move-wide/from16 v1, p17

    .line 1088
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->lastMessageSentTimeNanos:J

    move-wide/from16 v1, p19

    .line 1089
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->lastMessageReceivedTimeNanos:J

    move-wide/from16 v1, p21

    .line 1090
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->localFlowControlWindow:J

    move-wide/from16 v1, p23

    .line 1091
    iput-wide v1, v0, Lio/grpc/InternalChannelz$TransportStats;->remoteFlowControlWindow:J

    return-void
.end method
