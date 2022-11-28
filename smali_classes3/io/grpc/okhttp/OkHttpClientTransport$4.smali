.class Lio/grpc/okhttp/OkHttpClientTransport$4;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/OkHttpClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientTransport;

.field final synthetic val$asyncSink:Lio/grpc/okhttp/AsyncSink;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$variant:Lio/grpc/okhttp/internal/framed/Variant;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/util/concurrent/CountDownLatch;Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/internal/framed/Variant;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$asyncSink:Lio/grpc/okhttp/AsyncSink;

    iput-object p4, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$variant:Lio/grpc/okhttp/internal/framed/Variant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 531
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 536
    :goto_0
    new-instance v0, Lio/grpc/okhttp/OkHttpClientTransport$4$1;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpClientTransport$4$1;-><init>(Lio/grpc/okhttp/OkHttpClientTransport$4;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 554
    :try_start_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v3, v3, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    if-nez v3, :cond_0

    .line 555
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1000(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/SocketFactory;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 557
    :cond_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v3, v3, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    invoke-virtual {v3}, Lio/grpc/HttpConnectProxiedSocketAddress;->getProxyAddress()Ljava/net/SocketAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_4

    .line 558
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v4, v4, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 559
    invoke-virtual {v4}, Lio/grpc/HttpConnectProxiedSocketAddress;->getTargetAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v5, v5, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 560
    invoke-virtual {v5}, Lio/grpc/HttpConnectProxiedSocketAddress;->getProxyAddress()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v6, v6, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 561
    invoke-virtual {v6}, Lio/grpc/HttpConnectProxiedSocketAddress;->getUsername()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v7, v7, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 562
    invoke-virtual {v7}, Lio/grpc/HttpConnectProxiedSocketAddress;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 558
    invoke-static {v3, v4, v5, v6, v7}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1100(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    move-object v6, v3

    .line 570
    :goto_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1200(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 571
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 572
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1200(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1300(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->getOverridenHost()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->getOverridenPort()I

    move-result v8

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 573
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1400(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v9

    .line 571
    invoke-static/range {v4 .. v9}, Lio/grpc/okhttp/OkHttpTlsUpgrader;->upgrade(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILio/grpc/okhttp/internal/ConnectionSpec;)Ljavax/net/ssl/SSLSocket;

    move-result-object v6

    .line 574
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 577
    :cond_1
    invoke-virtual {v6, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 578
    invoke-static {v6}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 579
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$asyncSink:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v6}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lio/grpc/okhttp/AsyncSink;->becomeConnected(Lokio/Sink;Ljava/net/Socket;)V

    .line 582
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1500(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/Attributes;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v4

    sget-object v5, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    .line 583
    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v4

    sget-object v5, Lio/grpc/Grpc;->TRANSPORT_ATTR_LOCAL_ADDR:Lio/grpc/Attributes$Key;

    .line 584
    invoke-virtual {v6}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v4

    sget-object v5, Lio/grpc/Grpc;->TRANSPORT_ATTR_SSL_SESSION:Lio/grpc/Attributes$Key;

    .line 585
    invoke-virtual {v4, v5, v1}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v4

    sget-object v5, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    if-nez v1, :cond_2

    .line 587
    sget-object v7, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    goto :goto_2

    :cond_2
    sget-object v7, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    .line 586
    :goto_2
    invoke-virtual {v4, v5, v7}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v4

    .line 588
    invoke-virtual {v4}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v4

    .line 582
    invoke-static {v3, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1502(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;
    :try_end_1
    .catch Lio/grpc/StatusException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 596
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v4, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$variant:Lio/grpc/okhttp/internal/framed/Variant;

    invoke-interface {v5, v0, v2}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    invoke-static {v3, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$302(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    .line 598
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 599
    :try_start_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const-string v2, "socket"

    invoke-static {v6, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    invoke-static {v0, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1702(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/Socket;)Ljava/net/Socket;

    if-eqz v1, :cond_3

    .line 601
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v2, Lio/grpc/InternalChannelz$Security;

    new-instance v4, Lio/grpc/InternalChannelz$Tls;

    invoke-direct {v4, v1}, Lio/grpc/InternalChannelz$Tls;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v2, v4}, Lio/grpc/InternalChannelz$Security;-><init>(Lio/grpc/InternalChannelz$Tls;)V

    invoke-static {v0, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1802(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/InternalChannelz$Security;)Lio/grpc/InternalChannelz$Security;

    .line 603
    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 565
    :cond_4
    :try_start_3
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported SocketAddress implementation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v4, v4, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 567
    invoke-virtual {v4}, Lio/grpc/HttpConnectProxiedSocketAddress;->getProxyAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-virtual {v1, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 567
    invoke-virtual {v1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v1

    throw v1
    :try_end_3
    .catch Lio/grpc/StatusException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 593
    :try_start_4
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v3, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->onException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 596
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v3, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$variant:Lio/grpc/okhttp/internal/framed/Variant;

    invoke-interface {v4, v0, v2}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    invoke-static {v1, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$302(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-void

    :catch_2
    move-exception v1

    .line 590
    :try_start_5
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const/4 v4, 0x0

    sget-object v5, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-static {v3, v4, v5, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1600(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 596
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v3, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$variant:Lio/grpc/okhttp/internal/framed/Variant;

    invoke-interface {v4, v0, v2}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    invoke-static {v1, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$302(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-void

    :goto_3
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v4, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$4;->val$variant:Lio/grpc/okhttp/internal/framed/Variant;

    invoke-interface {v5, v0, v2}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    invoke-static {v3, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$302(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    throw v1
.end method
