.class final Lio/grpc/util/RoundRobinLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/RoundRobinLoadBalancer$Ref;,
        Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
    }
.end annotation


# static fields
.field private static final EMPTY_OK:Lio/grpc/Status;

.field static final STATE_INFO:Lio/grpc/Attributes$Key;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/ConnectivityStateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

.field private currentState:Lio/grpc/ConnectivityState;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private final random:Ljava/util/Random;

.field private final subchannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/EquivalentAddressGroup;",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "state-info"

    .line 56
    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    .line 162
    sget-object v0, Lio/grpc/Status;->OK:Lio/grpc/Status;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    return-void
.end method

.method constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    .line 64
    new-instance v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    invoke-direct {v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    const-string v0, "helper"

    .line 67
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/LoadBalancer$Helper;

    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 68
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->random:Ljava/util/Random;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/util/RoundRobinLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lio/grpc/util/RoundRobinLoadBalancer;->processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method private static filterNonFailingSubchannels(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;)",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    .line 213
    invoke-static {v1}, Lio/grpc/util/RoundRobinLoadBalancer;->isReady(Lio/grpc/LoadBalancer$Subchannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ")",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/ConnectivityStateInfo;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object p0

    sget-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    return-object p0
.end method

.method static isReady(Lio/grpc/LoadBalancer$Subchannel;)Z
    .locals 1

    .line 249
    invoke-static {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object p0

    iget-object p0, p0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast p0, Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {p0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object p0

    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/util/RoundRobinLoadBalancer;->stripAttrs(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/EquivalentAddressGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_1

    .line 143
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 145
    :cond_1
    invoke-static {p1}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object p1

    iput-object p2, p1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    .line 146
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState()V

    return-void
.end method

.method private static setsDifference(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 254
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 151
    invoke-static {p1}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object p1

    sget-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    .line 152
    invoke-static {v0}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    iput-object v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    return-void
.end method

.method private static stripAttrs(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/EquivalentAddressGroup;
    .locals 1

    .line 234
    new-instance v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {p0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static stripAttrs(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)",
            "Ljava/util/Map<",
            "Lio/grpc/EquivalentAddressGroup;",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    .line 228
    invoke-static {v1}, Lio/grpc/util/RoundRobinLoadBalancer;->stripAttrs(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/EquivalentAddressGroup;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateBalancingState()V
    .locals 6

    .line 169
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/RoundRobinLoadBalancer;->filterNonFailingSubchannels(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 173
    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    .line 174
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/LoadBalancer$Subchannel;

    .line 175
    invoke-static {v3}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object v3

    iget-object v3, v3, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast v3, Lio/grpc/ConnectivityStateInfo;

    .line 179
    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v4

    sget-object v5, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v4

    sget-object v5, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 182
    :cond_2
    sget-object v4, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    if-eq v1, v4, :cond_3

    invoke-virtual {v1}, Lio/grpc/Status;->isOk()Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    :cond_3
    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 186
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    goto :goto_1

    :cond_5
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    :goto_1
    new-instance v2, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v2, v1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v2}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    goto :goto_2

    .line 193
    :cond_6
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->random:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 194
    sget-object v2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    invoke-direct {v3, v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;-><init>(Ljava/util/List;I)V

    invoke-direct {p0, v2, v3}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    :goto_2
    return-void
.end method

.method private updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    invoke-virtual {p2, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;->isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 201
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    .line 202
    iput-object p2, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    :cond_1
    return-void
.end method


# virtual methods
.method getSubchannels()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 3

    .line 134
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    .line 135
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    instance-of v2, v1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v1, p1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    .line 134
    :goto_0
    invoke-direct {p0, v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    return-void
.end method

.method public handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
    .locals 7

    .line 73
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 75
    invoke-static {p1}, Lio/grpc/util/RoundRobinLoadBalancer;->stripAttrs(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->setsDifference(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    .line 82
    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v3, :cond_0

    .line 85
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/grpc/LoadBalancer$Subchannel;->updateAddresses(Ljava/util/List;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v3

    sget-object v4, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    new-instance v5, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    sget-object v6, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 98
    invoke-static {v6}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/grpc/util/RoundRobinLoadBalancer$Ref;-><init>(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v3, v4, v5}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 101
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v5

    .line 102
    invoke-virtual {v5, v1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v3}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v1

    .line 101
    invoke-virtual {v4, v1}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    const-string v3, "subchannel"

    .line 100
    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    .line 106
    new-instance v3, Lio/grpc/util/RoundRobinLoadBalancer$1;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/RoundRobinLoadBalancer$1;-><init>(Lio/grpc/util/RoundRobinLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    invoke-virtual {v1, v3}, Lio/grpc/LoadBalancer$Subchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 112
    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    goto :goto_0

    .line 116
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    .line 118
    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_2
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState()V

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Subchannel;

    .line 127
    invoke-direct {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer;->shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    .line 158
    invoke-direct {p0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V

    goto :goto_0

    :cond_0
    return-void
.end method
