.class public Lcom/android/systemui/classifier/EndPointLengthClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointLengthClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .registers 4
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .prologue
    .line 33
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/classifier/EndPointLengthEvaluator;->evaluate(F)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const-string/jumbo v0, "END_LNGTH"

    return-object v0
.end method
