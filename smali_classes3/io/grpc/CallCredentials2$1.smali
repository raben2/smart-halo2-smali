.class Lio/grpc/CallCredentials2$1;
.super Lio/grpc/CallCredentials2$MetadataApplier;
.source "CallCredentials2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/CallCredentials2;->applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/CallCredentials2;

.field final synthetic val$applier:Lio/grpc/CallCredentials$MetadataApplier;


# direct methods
.method constructor <init>(Lio/grpc/CallCredentials2;Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/grpc/CallCredentials2$1;->this$0:Lio/grpc/CallCredentials2;

    iput-object p2, p0, Lio/grpc/CallCredentials2$1;->val$applier:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-direct {p0}, Lio/grpc/CallCredentials2$MetadataApplier;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/grpc/Metadata;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/grpc/CallCredentials2$1;->val$applier:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-virtual {v0, p1}, Lio/grpc/CallCredentials$MetadataApplier;->apply(Lio/grpc/Metadata;)V

    return-void
.end method

.method public fail(Lio/grpc/Status;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lio/grpc/CallCredentials2$1;->val$applier:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-virtual {v0, p1}, Lio/grpc/CallCredentials$MetadataApplier;->fail(Lio/grpc/Status;)V

    return-void
.end method
