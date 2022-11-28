.class public final Lcom/google/api/Service$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Service.java"

# interfaces
.implements Lcom/google/api/ServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Service;",
        "Lcom/google/api/Service$Builder;",
        ">;",
        "Lcom/google/api/ServiceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2555
    invoke-static {}, Lcom/google/api/Service;->access$000()Lcom/google/api/Service;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Service$1;)V
    .locals 0

    .line 2548
    invoke-direct {p0}, Lcom/google/api/Service$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllApis(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Api;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3110
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3111
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1900(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllEndpoints(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Endpoint;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4217
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4218
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5800(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllEnums(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Enum;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3540
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3541
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3100(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLogs(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LogDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4442
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4443
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6700(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllMetrics(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4592
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4593
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7300(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllMonitoredResources(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4752
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4753
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7900(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTypes(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Type;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3328
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3329
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2500(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addApis(ILcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3092
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3093
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3094
    invoke-virtual {p2}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Api;

    .line 3093
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    return-object p0
.end method

.method public addApis(ILcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3058
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3059
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    return-object p0
.end method

.method public addApis(Lcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3075
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3076
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V

    return-object p0
.end method

.method public addApis(Lcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3041
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3042
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V

    return-object p0
.end method

.method public addEndpoints(ILcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4201
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4202
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4203
    invoke-virtual {p2}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Endpoint;

    .line 4202
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public addEndpoints(ILcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4171
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4172
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public addEndpoints(Lcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4186
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4187
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public addEndpoints(Lcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4156
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4157
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public addEnums(ILcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3521
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3522
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3523
    invoke-virtual {p2}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Enum;

    .line 3522
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    return-object p0
.end method

.method public addEnums(ILcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3485
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3486
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    return-object p0
.end method

.method public addEnums(Lcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3503
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3504
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V

    return-object p0
.end method

.method public addEnums(Lcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3467
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3468
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V

    return-object p0
.end method

.method public addLogs(ILcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4428
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4429
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4430
    invoke-virtual {p2}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LogDescriptor;

    .line 4429
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    return-object p0
.end method

.method public addLogs(ILcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4402
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4403
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    return-object p0
.end method

.method public addLogs(Lcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4415
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4416
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V

    return-object p0
.end method

.method public addLogs(Lcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4389
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4390
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V

    return-object p0
.end method

.method public addMetrics(ILcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4578
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4579
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4580
    invoke-virtual {p2}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MetricDescriptor;

    .line 4579
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public addMetrics(ILcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4552
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4553
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public addMetrics(Lcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4565
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4566
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public addMetrics(Lcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4539
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4540
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4737
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4738
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4739
    invoke-virtual {p2}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MonitoredResourceDescriptor;

    .line 4738
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4709
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4710
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4723
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4724
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4695
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4696
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public addTypes(ILcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3308
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3309
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3310
    invoke-virtual {p2}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Type;

    .line 3309
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    return-object p0
.end method

.method public addTypes(ILcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3270
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3271
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    return-object p0
.end method

.method public addTypes(Lcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3289
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3290
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V

    return-object p0
.end method

.method public addTypes(Lcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3251
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3252
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V

    return-object p0
.end method

.method public clearApis()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3126
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3127
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$2000(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearAuthentication()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3929
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3930
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4800(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearBackend()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3716
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3717
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3900(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearBilling()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4849
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4850
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8400(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearConfigVersion()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2643
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2644
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$300(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearContext()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4000
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4001
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5100(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearControl()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4316
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4317
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$6300(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearDocumentation()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3645
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3646
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3600(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearEndpoints()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4231
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4232
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5900(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearEnums()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3557
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3558
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3200(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearHttp()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3787
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3788
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4200(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearId()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2789
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2790
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$800(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearLogging()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4920
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4921
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8700(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearLogs()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4454
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4455
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$6800(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearMetrics()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4604
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4605
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$7400(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearMonitoredResources()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4765
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4766
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8000(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearMonitoring()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4991
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4992
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9000(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearName()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2709
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2710
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$500(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearProducerProjectId()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2929
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2930
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$1400(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearQuota()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3858
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3859
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4500(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearSourceInfo()Lcom/google/api/Service$Builder;
    .locals 1

    .line 5133
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5134
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9600(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearSystemParameters()Lcom/google/api/Service$Builder;
    .locals 1

    .line 5062
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5063
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9300(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearTitle()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2860
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2861
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$1100(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearTypes()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3346
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3347
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$2600(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public clearUsage()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4071
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4072
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5400(Lcom/google/api/Service;)V

    return-object p0
.end method

.method public getApis(I)Lcom/google/protobuf/Api;
    .locals 1

    .line 2992
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getApis(I)Lcom/google/protobuf/Api;

    move-result-object p1

    return-object p1
.end method

.method public getApisCount()I
    .locals 1

    .line 2978
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getApisCount()I

    move-result v0

    return v0
.end method

.method public getApisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 2962
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 2963
    invoke-virtual {v0}, Lcom/google/api/Service;->getApisList()Ljava/util/List;

    move-result-object v0

    .line 2962
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthentication()Lcom/google/api/Authentication;
    .locals 1

    .line 3883
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()Lcom/google/api/Backend;
    .locals 1

    .line 3670
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v0

    return-object v0
.end method

.method public getBilling()Lcom/google/api/Billing;
    .locals 1

    .line 4803
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v0

    return-object v0
.end method

.method public getConfigVersion()Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 2585
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/google/api/Context;
    .locals 1

    .line 3954
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v0

    return-object v0
.end method

.method public getControl()Lcom/google/api/Control;
    .locals 1

    .line 4270
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentation()Lcom/google/api/Documentation;
    .locals 1

    .line 3599
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoints(I)Lcom/google/api/Endpoint;
    .locals 1

    .line 4113
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getEndpoints(I)Lcom/google/api/Endpoint;

    move-result-object p1

    return-object p1
.end method

.method public getEndpointsCount()I
    .locals 1

    .line 4101
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getEndpointsCount()I

    move-result v0

    return v0
.end method

.method public getEndpointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation

    .line 4087
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4088
    invoke-virtual {v0}, Lcom/google/api/Service;->getEndpointsList()Ljava/util/List;

    move-result-object v0

    .line 4087
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnums(I)Lcom/google/protobuf/Enum;
    .locals 1

    .line 3415
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getEnums(I)Lcom/google/protobuf/Enum;

    move-result-object p1

    return-object p1
.end method

.method public getEnumsCount()I
    .locals 1

    .line 3400
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getEnumsCount()I

    move-result v0

    return v0
.end method

.method public getEnumsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .line 3383
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3384
    invoke-virtual {v0}, Lcom/google/api/Service;->getEnumsList()Ljava/util/List;

    move-result-object v0

    .line 3383
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttp()Lcom/google/api/Http;
    .locals 1

    .line 3741
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 2744
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2759
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLogging()Lcom/google/api/Logging;
    .locals 1

    .line 4874
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v0

    return-object v0
.end method

.method public getLogs(I)Lcom/google/api/LogDescriptor;
    .locals 1

    .line 4352
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getLogs(I)Lcom/google/api/LogDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getLogsCount()I
    .locals 1

    .line 4342
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getLogsCount()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation

    .line 4330
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4331
    invoke-virtual {v0}, Lcom/google/api/Service;->getLogsList()Ljava/util/List;

    move-result-object v0

    .line 4330
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(I)Lcom/google/api/MetricDescriptor;
    .locals 1

    .line 4502
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getMetrics(I)Lcom/google/api/MetricDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCount()I
    .locals 1

    .line 4492
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMetricsCount()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    .line 4480
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4481
    invoke-virtual {v0}, Lcom/google/api/Service;->getMetricsList()Ljava/util/List;

    move-result-object v0

    .line 4480
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1

    .line 4655
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getMonitoredResourcesCount()I
    .locals 1

    .line 4644
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoredResourcesCount()I

    move-result v0

    return v0
.end method

.method public getMonitoredResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 4631
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4632
    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoredResourcesList()Ljava/util/List;

    move-result-object v0

    .line 4631
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoring()Lcom/google/api/Monitoring;
    .locals 1

    .line 4945
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2677
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectId()Ljava/lang/String;
    .locals 1

    .line 2890
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2903
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuota()Lcom/google/api/Quota;
    .locals 1

    .line 3812
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v0

    return-object v0
.end method

.method public getSourceInfo()Lcom/google/api/SourceInfo;
    .locals 1

    .line 5087
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemParameters()Lcom/google/api/SystemParameters;
    .locals 1

    .line 5016
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2821
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2834
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypes(I)Lcom/google/protobuf/Type;
    .locals 1

    .line 3196
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getTypes(I)Lcom/google/protobuf/Type;

    move-result-object p1

    return-object p1
.end method

.method public getTypesCount()I
    .locals 1

    .line 3180
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTypesCount()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 3162
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3163
    invoke-virtual {v0}, Lcom/google/api/Service;->getTypesList()Ljava/util/List;

    move-result-object v0

    .line 3162
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()Lcom/google/api/Usage;
    .locals 1

    .line 4025
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthentication()Z
    .locals 1

    .line 3872
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasAuthentication()Z

    move-result v0

    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .line 3659
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasBackend()Z

    move-result v0

    return v0
.end method

.method public hasBilling()Z
    .locals 1

    .line 4792
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasBilling()Z

    move-result v0

    return v0
.end method

.method public hasConfigVersion()Z
    .locals 1

    .line 2571
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasConfigVersion()Z

    move-result v0

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .line 3943
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasContext()Z

    move-result v0

    return v0
.end method

.method public hasControl()Z
    .locals 1

    .line 4259
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasControl()Z

    move-result v0

    return v0
.end method

.method public hasDocumentation()Z
    .locals 1

    .line 3588
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasDocumentation()Z

    move-result v0

    return v0
.end method

.method public hasHttp()Z
    .locals 1

    .line 3730
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasHttp()Z

    move-result v0

    return v0
.end method

.method public hasLogging()Z
    .locals 1

    .line 4863
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasLogging()Z

    move-result v0

    return v0
.end method

.method public hasMonitoring()Z
    .locals 1

    .line 4934
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasMonitoring()Z

    move-result v0

    return v0
.end method

.method public hasQuota()Z
    .locals 1

    .line 3801
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasQuota()Z

    move-result v0

    return v0
.end method

.method public hasSourceInfo()Z
    .locals 1

    .line 5076
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasSourceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSystemParameters()Z
    .locals 1

    .line 5005
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasSystemParameters()Z

    move-result v0

    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .line 4014
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasUsage()Z

    move-result v0

    return v0
.end method

.method public mergeAuthentication(Lcom/google/api/Authentication;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3918
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3919
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4700(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    return-object p0
.end method

.method public mergeBackend(Lcom/google/api/Backend;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3705
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3706
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3800(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    return-object p0
.end method

.method public mergeBilling(Lcom/google/api/Billing;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4838
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4839
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8300(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    return-object p0
.end method

.method public mergeConfigVersion(Lcom/google/protobuf/UInt32Value;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2629
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2630
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$200(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    return-object p0
.end method

.method public mergeContext(Lcom/google/api/Context;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3989
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3990
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5000(Lcom/google/api/Service;Lcom/google/api/Context;)V

    return-object p0
.end method

.method public mergeControl(Lcom/google/api/Control;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4305
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4306
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6200(Lcom/google/api/Service;Lcom/google/api/Control;)V

    return-object p0
.end method

.method public mergeDocumentation(Lcom/google/api/Documentation;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3634
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3635
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3500(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public mergeHttp(Lcom/google/api/Http;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3776
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3777
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4100(Lcom/google/api/Service;Lcom/google/api/Http;)V

    return-object p0
.end method

.method public mergeLogging(Lcom/google/api/Logging;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4909
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4910
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8600(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    return-object p0
.end method

.method public mergeMonitoring(Lcom/google/api/Monitoring;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4980
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4981
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8900(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    return-object p0
.end method

.method public mergeQuota(Lcom/google/api/Quota;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3847
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3848
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4400(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    return-object p0
.end method

.method public mergeSourceInfo(Lcom/google/api/SourceInfo;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 5122
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5123
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9500(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    return-object p0
.end method

.method public mergeSystemParameters(Lcom/google/api/SystemParameters;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 5051
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5052
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9200(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    return-object p0
.end method

.method public mergeUsage(Lcom/google/api/Usage;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4060
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4061
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5300(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    return-object p0
.end method

.method public removeApis(I)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3142
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3143
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2100(Lcom/google/api/Service;I)V

    return-object p0
.end method

.method public removeEndpoints(I)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4245
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4246
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6000(Lcom/google/api/Service;I)V

    return-object p0
.end method

.method public removeEnums(I)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3574
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3575
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3300(Lcom/google/api/Service;I)V

    return-object p0
.end method

.method public removeLogs(I)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4466
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4467
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6900(Lcom/google/api/Service;I)V

    return-object p0
.end method

.method public removeMetrics(I)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4616
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4617
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7500(Lcom/google/api/Service;I)V

    return-object p0
.end method

.method public removeMonitoredResources(I)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4778
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4779
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8100(Lcom/google/api/Service;I)V

    return-object p0
.end method

.method public removeTypes(I)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3364
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3365
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2700(Lcom/google/api/Service;I)V

    return-object p0
.end method

.method public setApis(ILcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3024
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3025
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3026
    invoke-virtual {p2}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Api;

    .line 3025
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    return-object p0
.end method

.method public setApis(ILcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3007
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3008
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    return-object p0
.end method

.method public setAuthentication(Lcom/google/api/Authentication$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3906
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3907
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Authentication$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    return-object p0
.end method

.method public setAuthentication(Lcom/google/api/Authentication;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3893
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3894
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    return-object p0
.end method

.method public setBackend(Lcom/google/api/Backend$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3693
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3694
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Backend$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Backend;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    return-object p0
.end method

.method public setBackend(Lcom/google/api/Backend;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3680
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3681
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    return-object p0
.end method

.method public setBilling(Lcom/google/api/Billing$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4826
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4827
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Billing$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Billing;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    return-object p0
.end method

.method public setBilling(Lcom/google/api/Billing;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4813
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4814
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    return-object p0
.end method

.method public setConfigVersion(Lcom/google/protobuf/UInt32Value$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2614
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2615
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    return-object p0
.end method

.method public setConfigVersion(Lcom/google/protobuf/UInt32Value;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2598
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2599
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    return-object p0
.end method

.method public setContext(Lcom/google/api/Context$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3977
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3978
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Context$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Context;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V

    return-object p0
.end method

.method public setContext(Lcom/google/api/Context;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3964
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3965
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V

    return-object p0
.end method

.method public setControl(Lcom/google/api/Control$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4293
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4294
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Control$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Control;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V

    return-object p0
.end method

.method public setControl(Lcom/google/api/Control;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4280
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4281
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V

    return-object p0
.end method

.method public setDocumentation(Lcom/google/api/Documentation$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3622
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3623
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Documentation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public setDocumentation(Lcom/google/api/Documentation;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3609
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3610
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public setEndpoints(ILcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4141
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4142
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4143
    invoke-virtual {p2}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Endpoint;

    .line 4142
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public setEndpoints(ILcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4126
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4127
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public setEnums(ILcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3449
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3450
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3451
    invoke-virtual {p2}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Enum;

    .line 3450
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    return-object p0
.end method

.method public setEnums(ILcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3431
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3432
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    return-object p0
.end method

.method public setHttp(Lcom/google/api/Http$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3764
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3765
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Http$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Http;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V

    return-object p0
.end method

.method public setHttp(Lcom/google/api/Http;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3751
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3752
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2774
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2775
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$700(Lcom/google/api/Service;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2806
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2807
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$900(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLogging(Lcom/google/api/Logging$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4897
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4898
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Logging$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    return-object p0
.end method

.method public setLogging(Lcom/google/api/Logging;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4884
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4885
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    return-object p0
.end method

.method public setLogs(ILcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4376
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4377
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4378
    invoke-virtual {p2}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LogDescriptor;

    .line 4377
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    return-object p0
.end method

.method public setLogs(ILcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4363
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4364
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    return-object p0
.end method

.method public setMetrics(ILcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4526
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4527
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4528
    invoke-virtual {p2}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MetricDescriptor;

    .line 4527
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public setMetrics(ILcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4513
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4514
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4681
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4682
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4683
    invoke-virtual {p2}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MonitoredResourceDescriptor;

    .line 4682
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4667
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4668
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public setMonitoring(Lcom/google/api/Monitoring$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4968
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4969
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    return-object p0
.end method

.method public setMonitoring(Lcom/google/api/Monitoring;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4955
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4956
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2693
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2694
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$400(Lcom/google/api/Service;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2727
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2728
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$600(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setProducerProjectId(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2916
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2917
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1300(Lcom/google/api/Service;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProducerProjectIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2944
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2945
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1500(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setQuota(Lcom/google/api/Quota$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3835
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3836
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Quota$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    return-object p0
.end method

.method public setQuota(Lcom/google/api/Quota;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3822
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3823
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    return-object p0
.end method

.method public setSourceInfo(Lcom/google/api/SourceInfo$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 5110
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5111
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/SourceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    return-object p0
.end method

.method public setSourceInfo(Lcom/google/api/SourceInfo;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 5097
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5098
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    return-object p0
.end method

.method public setSystemParameters(Lcom/google/api/SystemParameters$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 5039
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5040
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/SystemParameters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    return-object p0
.end method

.method public setSystemParameters(Lcom/google/api/SystemParameters;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 5026
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5027
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2847
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2848
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1000(Lcom/google/api/Service;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2875
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2876
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1200(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTypes(ILcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3232
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3233
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3234
    invoke-virtual {p2}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Type;

    .line 3233
    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    return-object p0
.end method

.method public setTypes(ILcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 3213
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3214
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    return-object p0
.end method

.method public setUsage(Lcom/google/api/Usage$Builder;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4048
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4049
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Usage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    return-object p0
.end method

.method public setUsage(Lcom/google/api/Usage;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 4035
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4036
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    return-object p0
.end method
