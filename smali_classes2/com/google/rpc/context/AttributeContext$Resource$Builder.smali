.class public final Lcom/google/rpc/context/AttributeContext$Resource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Resource;",
        "Lcom/google/rpc/context/AttributeContext$Resource$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7712
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9400()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0

    .line 7705
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLabels()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8010
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8011
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearName()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7880
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7881
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9900(Lcom/google/rpc/context/AttributeContext$Resource;)V

    return-object p0
.end method

.method public clearService()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7773
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7774
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9600(Lcom/google/rpc/context/AttributeContext$Resource;)V

    return-object p0
.end method

.method public clearType()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7966
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7967
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10200(Lcom/google/rpc/context/AttributeContext$Resource;)V

    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 1

    .line 8005
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8006
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLabels()Ljava/util/Map;
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

    .line 8036
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 7991
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
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

    .line 8048
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8049
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 8048
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 8064
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8065
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8066
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 8067
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

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 8081
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8082
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8083
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 8084
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8087
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 8085
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 7814
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7836
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 7728
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7743
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getServiceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 7921
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7936
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Resource$Builder;"
        }
    .end annotation

    .line 8116
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8117
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8102
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8103
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8025
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8026
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8027
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7858
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7859
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9800(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7904
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7905
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10000(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7758
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7759
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9500(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7790
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7791
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9700(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7951
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7952
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10100(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7983
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7984
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10300(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
