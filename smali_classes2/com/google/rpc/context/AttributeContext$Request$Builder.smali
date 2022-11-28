.class public final Lcom/google/rpc/context/AttributeContext$Request$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Request;",
        "Lcom/google/rpc/context/AttributeContext$Request$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$RequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5181
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->access$4900()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0

    .line 5174
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuth()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6101
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6102
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$8200(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearHeaders()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5356
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5357
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearHost()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5591
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5592
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$6100(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearId()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5242
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5243
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5100(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearMethod()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5313
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5314
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5400(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearPath()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5522
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5523
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5800(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearProtocol()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5932
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5933
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7500(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearQuery()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5733
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5734
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$6700(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearReason()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6008
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6009
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7800(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearScheme()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5660
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5661
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$6400(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearSize()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5866
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5867
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7300(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public clearTime()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5826
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5827
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7100(Lcom/google/rpc/context/AttributeContext$Request;)V

    return-object p0
.end method

.method public containsHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 5351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5352
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAuth()Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1

    .line 6051
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5383
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 5336
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5396
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    .line 5397
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 5396
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5414
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    .line 5415
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 5416
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getHeadersOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5431
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5432
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    .line 5433
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 5434
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5437
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5435
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 5552
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5565
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 5197
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5212
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 5274
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5287
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 5483
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5496
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 5884
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5900
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 5691
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5705
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 5966
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5980
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 5621
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5634
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getSchemeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 5841
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 5776
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasAuth()Z
    .locals 1

    .line 6039
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->hasAuth()Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .line 5764
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->hasTime()Z

    move-result v0

    return v0
.end method

.method public mergeAuth(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6089
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6090
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$8100(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V

    return-object p0
.end method

.method public mergeTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5814
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5815
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public putAllHeaders(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Request$Builder;"
        }
    .end annotation

    .line 5468
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5469
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5451
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5452
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5453
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5454
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5373
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5374
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAuth(Lcom/google/rpc/context/AttributeContext$Auth$Builder;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6076
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6077
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$8000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V

    return-object p0
.end method

.method public setAuth(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6062
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6063
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$8000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5578
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5579
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6000(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHostBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5606
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5607
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6200(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5227
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5228
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5000(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5259
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5260
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5200(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5300
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5301
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5300(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMethodBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5328
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5329
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5500(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5509
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5510
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5700(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5538
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5916
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5917
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7400(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProtocolBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5950
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5951
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7600(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5719
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5720
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6600(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setQueryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5749
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5750
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6800(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5994
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5995
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7700(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6024
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6025
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5647
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5648
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6300(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSchemeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5675
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5676
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6500(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSize(J)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5853
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5854
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request;->access$7200(Lcom/google/rpc/context/AttributeContext$Request;J)V

    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5801
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5802
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5787
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5788
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method
