.class public final Lcom/google/rpc/context/AttributeContext$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Response;",
        "Lcom/google/rpc/context/AttributeContext$Response$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6683
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Response;->access$8400()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0

    .line 6676
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6722
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6723
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8600(Lcom/google/rpc/context/AttributeContext$Response;)V

    return-object p0
.end method

.method public clearHeaders()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6790
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6791
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearSize()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6762
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6763
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8800(Lcom/google/rpc/context/AttributeContext$Response;)V

    return-object p0
.end method

.method public clearTime()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6979
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6980
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$9200(Lcom/google/rpc/context/AttributeContext$Response;)V

    return-object p0
.end method

.method public containsHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 6785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6786
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCode()J
    .locals 2

    .line 6697
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getCode()J

    move-result-wide v0

    return-wide v0
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

    .line 6817
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 6770
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

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

    .line 6830
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    .line 6831
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 6830
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6848
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    .line 6849
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 6850
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

    .line 6865
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6866
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    .line 6867
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 6868
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6871
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6869
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSize()J
    .locals 2

    .line 6737
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 6929
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasTime()Z
    .locals 1

    .line 6917
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->hasTime()Z

    move-result v0

    return v0
.end method

.method public mergeTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6967
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6968
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->access$9100(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public putAllHeaders(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Response$Builder;"
        }
    .end annotation

    .line 6902
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6903
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6885
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6886
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6887
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6888
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6807
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6808
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setCode(J)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6709
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6710
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Response;->access$8500(Lcom/google/rpc/context/AttributeContext$Response;J)V

    return-object p0
.end method

.method public setSize(J)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6749
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6750
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Response;->access$8700(Lcom/google/rpc/context/AttributeContext$Response;J)V

    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6954
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6955
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->access$9000(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6940
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6941
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->access$9000(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method
